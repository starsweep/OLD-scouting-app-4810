using Godot;
using System;

public partial class QRnum : Node
{
	private Tnum _tnum;

	public override void _Ready()
	{
	base._Ready();

	_tnum = GetNode<Tnum>("Tnum");
	}
	public override void _Process(double delta)
	{
		string number = _tnum;
		QRnum = number;
	}
}
