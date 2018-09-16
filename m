Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BD276C03
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 16:03:30 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 279132D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 16:03:29 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sun, 16 Sep 2018 19:03:40 +0300
Message-ID: <2499181.JFuLfGgBK5@avalon>
In-Reply-To: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
References: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Project Banbury
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Matthew,

On Friday, 14 September 2018 20:28:01 EEST Matthew Wilcox wrote:
> We've all pulled the wrong drive out of a machine or unplugged a USB key
> before the write back has completely finished. You try to plug it back in,
> but the damage is done. The pending writes are lost, the filesystem is
> damaged and full of errors and you are having a Bad Day. What if ...
> plugging the drive back in could be made to work?
> 
> This session would be more of a discussion than a presentation since I've
> not written a single line of code towards fixing the problem. I have
> written a web page sketching out an architecture for how we might make this
> work:
> 
> http://www.wil.cx/~willy/banbury.html

Having lost a server due to a DDoS attach that rendered the link between CPU 
and storage unusable for a too long time, I think this would be an amazing 
improvement.

-- 
Regards,

Laurent Pinchart
