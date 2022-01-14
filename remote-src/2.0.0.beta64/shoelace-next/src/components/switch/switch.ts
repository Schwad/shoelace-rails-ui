import { LitElement, html } from 'lit';
import { customElement, property, query, state } from 'lit/decorators.js';
import { classMap } from 'lit/directives/class-map.js';
import { ifDefined } from 'lit/directives/if-defined.js';
import { live } from 'lit/directives/live.js';
import { emit } from '../../internal/event';
import { watch } from '../../internal/watch';
import { FormSubmitController } from '../../internal/form-control';
import styles from './switch.styles';

let id = 0;

/**
 * @since 2.0
 * @status stable
 *
 * @slot - The switch's label.
 *
 * @event sl-blur - Emitted when the control loses focus.
 * @event sl-change - Emitted when the control's checked state changes.
 * @event sl-focus - Emitted when the control gains focus.
 *
 * @csspart base - The component's base wrapper.
 * @csspart control - The switch control.
 * @csspart thumb - The switch position indicator.
 * @csspart label - The switch label.
 *
 * @cssproperty --width - The width of the switch.
 * @cssproperty --height - The height of the switch.
 * @cssproperty --thumb-size - The size of the thumb.
 */
@customElement('sl-switch')
export default class SlSwitch extends LitElement {
  static styles = styles;

  @query('input[type="checkbox"]') input: HTMLInputElement;

  // @ts-ignore
  private formSubmitController = new FormSubmitController(this, {
    value: (control: SlSwitch) => (control.checked ? control.value : undefined)
  });
  private switchId = `switch-${++id}`;
  private labelId = `switch-label-${id}`;

  @state() private hasFocus = false;

  /** The switch's name attribute. */
  @property() name: string;

  /** The switch's value attribute. */
  @property() value: string;

  /** Disables the switch. */
  @property({ type: Boolean, reflect: true }) disabled = false;

  /** Makes the switch a required field. */
  @property({ type: Boolean, reflect: true }) required = false;

  /** Draws the switch in a checked state. */
  @property({ type: Boolean, reflect: true }) checked = false;

  /** This will be true when the control is in an invalid state. Validity is determined by the `required` prop. */
  @property({ type: Boolean, reflect: true }) invalid = false;

  firstUpdated() {
    this.invalid = !this.input.checkValidity();
  }

  /** Simulates a click on the switch. */
  click() {
    this.input.click();
  }

  /** Sets focus on the switch. */
  focus(options?: FocusOptions) {
    this.input.focus(options);
  }

  /** Removes focus from the switch. */
  blur() {
    this.input.blur();
  }

  /** Checks for validity and shows the browser's validation message if the control is invalid. */
  reportValidity() {
    return this.input.reportValidity();
  }

  /** Sets a custom validation message. If `message` is not empty, the field will be considered invalid. */
  setCustomValidity(message: string) {
    this.input.setCustomValidity(message);
    this.invalid = !this.input.checkValidity();
  }

  handleBlur() {
    this.hasFocus = false;
    emit(this, 'sl-blur');
  }

  @watch('checked')
  handleCheckedChange() {
    if (this.input) {
      this.input.checked = this.checked;
      this.invalid = !this.input.checkValidity();
    }
  }

  handleClick() {
    this.checked = !this.checked;
    emit(this, 'sl-change');
  }

  @watch('disabled')
  handleDisabledChange() {
    // Disabled form controls are always valid, so we need to recheck validity when the state changes
    if (this.input) {
      this.input.disabled = this.disabled;
      this.invalid = !this.input.checkValidity();
    }
  }

  handleFocus() {
    this.hasFocus = true;
    emit(this, 'sl-focus');
  }

  handleKeyDown(event: KeyboardEvent) {
    if (event.key === 'ArrowLeft') {
      event.preventDefault();
      this.checked = false;
      emit(this, 'sl-change');
    }

    if (event.key === 'ArrowRight') {
      event.preventDefault();
      this.checked = true;
      emit(this, 'sl-change');
    }
  }

  render() {
    return html`
      <label
        part="base"
        for=${this.switchId}
        class=${classMap({
          switch: true,
          'switch--checked': this.checked,
          'switch--disabled': this.disabled,
          'switch--focused': this.hasFocus
        })}
      >
        <input
          id=${this.switchId}
          class="switch__input"
          type="checkbox"
          name=${ifDefined(this.name)}
          value=${ifDefined(this.value)}
          .checked=${live(this.checked)}
          .disabled=${this.disabled}
          .required=${this.required}
          role="switch"
          aria-checked=${this.checked ? 'true' : 'false'}
          aria-labelledby=${this.labelId}
          @click=${this.handleClick}
          @blur=${this.handleBlur}
          @focus=${this.handleFocus}
          @keydown=${this.handleKeyDown}
        />

        <span part="control" class="switch__control">
          <span part="thumb" class="switch__thumb"></span>
        </span>

        <span part="label" id=${this.labelId} class="switch__label">
          <slot></slot>
        </span>
      </label>
    `;
  }
}

declare global {
  interface HTMLElementTagNameMap {
    'sl-switch': SlSwitch;
  }
}
