package ember.inspector
{

	import ember.inspector.properties.AllPropertyTests;
	
	[Suite]
	public class AllInspectorTests
	{
		
		public var allTypes:AllPropertyTests;
		
		public var componentInspector:ComponentInspectorTests;
		public var componentInspectorFactory:ComponentInspectorFactoryTests;

		public var propertyInspector:PropertyInspectorTests;
		public var propertyInspectorFactory:PropertyInspectorFactoryTests;
		
	}
}
