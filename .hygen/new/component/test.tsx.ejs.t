---
to: <%= absPath %>/<%= component_name %>.test.tsx
---
import { render, screen } from '@testing-library/react';
import { <%= component_name %> } from '../';

describe('<%= component_name %>', () => {

	it('renders <%= component_name %> successfully', () => {

		render(<<%= component_name %> />);
		const element = screen.getByTestId(/<%= h.inflection.camelize(component_name) %>/i);
		expect(element).toBeInTheDocument();
	});

});