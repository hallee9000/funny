// 引入必要的库
import * as React from "react";
import { PropertyControls, ControlType } from "framer";

// 定义 CSS 样式
const style: React.CSSProperties = {
    display: "flex",
    alignItems: "flex-start",
    padding: "10px",
    color: "#333",
    background: "#FFF",
    overflow: "hidden",
};
const avatarStyle: React.CSSProperties = {
    width: "40px",
    height: "40px",
    marginRight: "10px",
    borderRadius: "20px",
    background: "#EEE"
};
const nameStyle: React.CSSProperties = {
    margin: 0,
    color: "#666",
    fontSize: "16px"
}
const timeStyle: React.CSSProperties = {
    margin: "5px 0",
    fontSize: "12px",
    color: "#999"
}
const contentStyle: React.CSSProperties = {
    margin: 0,
    fontSize: "14px"
}

// 定义属性类型
interface Props {
	width: number;
	height: number;
    name: string,
    content: string;
    avatar: string;
}

// 导出一个组件类
export class Comment extends React.Component<Props> {

    // 设置默认属性
    static defaultProps = {
        width: 320,
        height: 80,
        name: "阿南",
        content: "这很厉害啊！",
        avatar: null
    }

    // 在右侧属性调节区显示的东西
    static propertyControls: PropertyControls = {
        name: { type: ControlType.String, title: "昵称" },
        content: { type: ControlType.String, title: "内容" },
        avatar: { type: ControlType.Image, title: "头像"}
    }

    render() {
        const { width, height, name, content, avatar } = this.props
        return (
            <div style={{...style, width, height}}>
                <img src={avatar} style={avatarStyle}/>
                <div>
                    <p style={nameStyle}>{name}</p>
                    <p style={timeStyle}>12:12</p>
                    <p style={contentStyle}>{content}</p>
                </div>
            </div>
        );
    }
}
