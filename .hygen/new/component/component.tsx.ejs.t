---
to: <%= absPath %>/<%= component_name %>.tsx
---
import styles from './<%= component_name %>.module.scss';

type <%= component_name %>Props = {};

export default function <%= component_name %>(props: <%= component_name %>Props) => {
  return (
	  <div className={styles.<%= h.inflection.camelize(component_name) %>} data-testid="<%= h.inflection.camelize(component_name) %>">
	  </div>
  );
};