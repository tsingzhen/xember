package ember.inspector
{
	import ember.inspector.properties.IntInspector;
	import ember.io.ComponentConfigFactory;

	import mocks.MockAllNativeTypesComponent;

	import org.hamcrest.assertThat;
	import org.hamcrest.object.instanceOf;
	import org.hamcrest.object.notNullValue;

	public class ComponentInspectorFactoryTests
	{
		private var configs:ComponentConfigFactory;
		private var factory:ComponentInspectorFactory;
		
		[Before]
		public function before():void
		{
			configs = new ComponentConfigFactory();
			factory = new ComponentInspectorFactory(configs);
		}
		
		[After]
		public function after():void
		{
			factory = null;
			configs = null;
		}
		
		[Test]
		public function can_create_a_component_inspector():void
		{
			var component:MockAllNativeTypesComponent = new MockAllNativeTypesComponent();
			var inspector:ComponentInspector = factory.getInspector(component);
			
			assertThat(inspector, notNullValue());
		}
		
		[Test]
		public function component_auto_populates_with_property_inspectors():void
		{
			var component:MockAllNativeTypesComponent = new MockAllNativeTypesComponent();
			var inspector:ComponentInspector = factory.getInspector(component);
			
			assertThat(inspector.getProperty("Boolean_value"), notNullValue());
		}
		
		[Test]
		public function component_property_inspectors_have_correct_inputs():void
		{
			var component:MockAllNativeTypesComponent = new MockAllNativeTypesComponent();
			var inspector:ComponentInspector = factory.getInspector(component);
			
			assertThat(inspector.getProperty("int_value"), instanceOf(IntInspector));
		}
		
	}
}
