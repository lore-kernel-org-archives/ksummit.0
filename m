Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 79EC110F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 23:05:27 +0000 (UTC)
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id BE9D15D4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 23:05:26 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 19 Sep 2018 02:05:37 +0300
Message-ID: <2862428.aifHJM1PbC@avalon>
In-Reply-To: <20180918173148.GB9728@chatter>
References: <20180917100413.22eac00d@coco.lan>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: James.Bottomley@hansenpartnership.com, mchehab+samsung@kernel.org,
	Tim.Bird@sony.com, Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINER SUMMIT] community
	management/subsystem governance
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Hi Konstantin,

On Tuesday, 18 September 2018 20:31:48 EEST Konstantin Ryabitsev wrote:
> On Tue, Sep 18, 2018 at 05:08:02PM +0000, Tim.Bird@sony.com wrote:
> >> https://urldefense.proofpoint.com/v2/url?u=https-> >> 3A__korg.wiki.kernel.org_userdoc_mail-23sending-5Foutgoing-
> >> 5Fmail&d=DwICAg&c=fP4tf--1dS0biCFlB0saz0I0kjO5v7-
> >> GLPtvShAo4cc&r=rUvFawR4KzgZu1gSN5tuozUn7iTTP0Y-
> >> INWqfY8MsF0&m=90EMZrRfkvlzWBNtrJ8QnHDj3-EwehEZhQiC5YJY-
> >> Uk&s=xtUgBLn5bjLazevAEIdAoHAGclbgin-D9Cek15hsuZk&e=
> 
> Ick.
> 
> > Thank you for the offer.  However, while that's a solution that might
> > work for me (modulo my ability to punch my way through the firewall to
> > that mail server), it doesn't scale or help my colleagues at Sony who I'm
> > trying to remove barriers for as well.   I'm senior enough at Sony to have
> > a somewhat different situation than other Sony Linux developers, however 
> > I intentionally work through the IT department and use commonly provided
> > tools here in order to 1) understand the hurdles other developers at Sony
> > have, and 2) work on general solutions.
> 
> Ah, I understand your situation better now.
> 
> So, what if we imagine that there's an imaginary web tool that does
> this:
> 
> 1. Allows people to generate an account
> 2. Verifies their email address
> 3. Instructs people how to generate a patch or series of patches
> 4. Gives a way to upload generated patches
> 5. Runs checkpatch to make sure there are no errors
> 6. Runs get_maintainer to find out where the patch(es) should be sent to
> 7. (Does more imaginary magic, such as looking up message-id references)
> 8. Mails it out
> 
> Would that be useful or solve any problems? Or would that, on the
> contrary, create more problems than it solves?

What if that imaginary web tool accepted a git push fo steps 3 and 4 ? It 
would be nice if the git push could be unauthenticated, but I understand that 
could cause spam and other related issues.

-- 
Regards,

Laurent Pinchart
