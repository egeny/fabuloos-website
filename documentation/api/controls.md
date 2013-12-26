This method allows you to get or set the `controls` property of the player.

{% alert info %}
Most of the time you will disable the native HTML5 controls to provide your fancy HTML/CSS/JS controls.
{% endalert %}

## Example:
```javascript
player.controls(); // Return the state of the player's controls
player.controls( false ); // Disable the native controls
```