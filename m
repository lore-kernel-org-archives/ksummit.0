Return-Path: <alexandre.belloni@bootlin.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C3786E5F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 22:47:04 +0000 (UTC)
Received: from mail.bootlin.com (mail.bootlin.com [62.4.15.54])
	by smtp1.linuxfoundation.org (Postfix) with ESMTP id 1EE1842D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 22:47:03 +0000 (UTC)
Date: Wed, 19 Sep 2018 00:46:59 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Greg KH <gregkh@linuxfoundation.org>, Tim.Bird@sony.com,
	James.Bottomley@hansenpartnership.com,
	ksummit-discuss@lists.linuxfoundation.org, mchehab+samsung@kernel.org
Message-ID: <20180918224659.GZ14988@piout.net>
References: <CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter> <20180918174913.GA22988@kroah.com>
	<20180918180324.GB10055@chatter>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180918180324.GB10055@chatter>
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

On 18/09/2018 14:03:24-0400, Konstantin Ryabitsev wrote:
> On Tue, Sep 18, 2018 at 07:49:13PM +0200, Greg KH wrote:
> > > 1. Allows people to generate an account
> > > 2. Verifies their email address
> > > 3. Instructs people how to generate a patch or series of patches
> > > 4. Gives a way to upload generated patches
> > > 5. Runs checkpatch to make sure there are no errors
> > > 6. Runs get_maintainer to find out where the patch(es) should be sent to
> > > 7. (Does more imaginary magic, such as looking up message-id references)
> > > 8. Mails it out
> > 
> > That last step might be hard, you have to "mail it out" to look like it
> > came from the original author, right?  Then all crud breaks out as you
> > can't deliver an email from "sony.com" successfully.
> 
> We already do nasty things to work around this. E.g. if you look at the
> envelope-sender for mail delivered via mail.kernel.org you'll see that it
> all looks like this: SRS0=crc=stuff=orig-domain.com=orig-local@kernel.org
> 
> So, mailing it out and having it pass DKIM/SPF checks to be reliably
> delivered is something we can do. Or, we can send it from
> "vapor-git-thingy@kernel.org" and put the original sender into Reply-To,
> which is also kosher.
> 

Wouldn't that break patchwork? I remember having to edit patches because
it changed the name of the author to its previous named based on the
email address (the name changed but not the email).

Else, I find that a generally good idea.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
