import { CurrentValuePipe } from './current-value.pipe';

describe('CurrentValuePipe', () => {
  it('create an instance', () => {
    const pipe = new CurrentValuePipe();
    expect(pipe).toBeTruthy();
  });
});
