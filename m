Return-Path: <jason@lakedaemon.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 16879BBF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 17:05:13 +0000 (UTC)
Received: from pmta2.delivery3.ore.mailhop.org
	(pmta2.delivery3.ore.mailhop.org [54.213.22.21])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id AA89D223
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 14 Jul 2015 17:05:11 +0000 (UTC)
Date: Tue, 14 Jul 2015 17:05:08 +0000
From: Jason Cooper <jason@lakedaemon.net>
To: David Woodhouse <dwmw2@infradead.org>
Message-ID: <20150714170508.GF14593@io.lakedaemon.net>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<20150710155144.34dde697@gandalf.local.home>
	<1436558412.24408.35.camel@infradead.org>
	<2196355.jXBH4erg3y@avalon>
	<1436887888.20909.80.camel@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1436887888.20909.80.camel@infradead.org>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
 Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 14, 2015 at 04:31:28PM +0100, David Woodhouse wrote:
> On Mon, 2015-07-13 at 01:00 +0300, Laurent Pinchart wrote:
> > 
> > > And then I can *read* them before sending them, which is good practice
> > > anyway. Am I the only person who often finds a final minor nit with
> > > their own patch, in that final read-through just before hitting 'send'
> > > on an email?
> > 
> > Certainly not, but what prevents you from doing that with git-send-email ? 
> 
> I don't know. It's not that I *can't* do that with git-send-email.
> 
> But I seem to see things differently when it's in a mail compose
> window, and I *do* spot trivial issues there, that I've missed when
> actually editing the code and even reviewing patches in gitk/etc.

I agree.  There's something different about viewing a patch in the mail
client vs in an editor or pager.

> Perhaps it's just the additional mental stimulus of physically
> preparing to hit the 'send' button and send it out to the world with my
> name on it.

It could also be that we're conditioned to reviewing patches in the mail
client.  So seeing the patch there triggers review-mode vice write-mode.

But I also think there's something about the review process prior to
'send' that catches mistakes as well.

thx,

Jason.
