<h3>Task:</h3>

<h4>Part III</h4>

<ul>
	<li>Re implement the attr_accessor method. Don't call it attr_accessor though. The idea is that this method will create methods dynamically to access and to set instance variables.</li>

	<li>that is if we implement:</li>

	<li>alt_accessor :name</li>

	<li>It will create the following methods:</li>

		<p>
			<li>def name</li>
		  		<li>@name</li>
			<li>end</li>
		</p>

		<p>
			<li>def name=(name)</li>
		  		<li>@name = name</li>
			<li>end</li>
		</p>

	<li>This is what we call meta programming (sounds scarier than it is).</li>
</ul>
