import React from 'react';



class Game extends React.Component {
    renderGames = () => {
        return (this.props.tiles.map((tile) => {
            return (
                <div>
                    <div className="gameTile">
                    {tile.translation}
                </div>
                <div className="gameTile">
                    <img style={{'height': "80px", "width": "90px"}} src={tile.img} alt={tile.name}/>
                </div>
                </div>
                
            )
        }
        )
    
        )
    }


    render() {
        return (
        <div className="game">
            {this.renderGames()}
            
            
            
        </div>
        
        )
    }
}

export default Game;