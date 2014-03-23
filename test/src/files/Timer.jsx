/**
 * @jsx React.DOM
 */
 
var React = require('react');
var svg = require('url?mimetype=image/svg+xml!./example.svg');
var JSONdata = require('json!./example.json')

// This could use JSX if we wanted; doesn't matter.
var Timer = React.createClass({
  getInitialState: function() {
    return {secondsElapsed: 0};
  },
  tick: function() {
    this.setState({secondsElapsed: this.state.secondsElapsed + 1});
  },
  componentDidMount: function() {
    this.interval = setInterval(this.tick, 1000);
  },
  componentWillUnmount: function() {
    clearInterval(this.interval);
  },
  render: function() {
    return (
      <div>
        <img src={svg} alt={JSONdata.name} />
        <input type="text" value="Edit" />
        Seconds Elapsed: {this.state.secondsElapsed}
      </div>
    );
  }
});

module.exports = Timer;
