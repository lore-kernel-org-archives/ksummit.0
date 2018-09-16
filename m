Return-Path: <hare@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0DCF3904
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 10:53:12 +0000 (UTC)
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 79871102
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 10:53:11 +0000 (UTC)
Received: from relay1.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id DB2DBAE86
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 16 Sep 2018 10:53:08 +0000 (UTC)
To: ksummit-discuss@lists.linuxfoundation.org
References: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
From: Hannes Reinecke <hare@suse.com>
Message-ID: <80c03d82-4de4-63bb-f692-109fccef61f7@suse.com>
Date: Sun, 16 Sep 2018 12:53:08 +0200
MIME-Version: 1.0
In-Reply-To: <CAFhKne8kiF6k-QUJ9x-cCyBcVvfuWKdcUtQZNz=1sx_iHR+64g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Project Banbury
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On 09/14/2018 07:28 PM, Matthew Wilcox wrote:
> We've all pulled the wrong drive out of a machine or unplugged a USB key
> before the write back has completely finished. You try to plug it back
> in, but the damage is done. The pending writes are lost, the filesystem
> is damaged and full of errors and you are having a Bad Day. What if ...
> plugging the drive back in could be made to work?
> 
> This session would be more of a discussion than a presentation since
> I've not written a single line of code towards fixing the problem. I
> have written a web page sketching out an architecture for how we might
> make this work:
> 
I'd be all for it.
Maybe we can have a session in Edinburgh to discuss things further

Cheers,

Hannes
