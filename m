Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A861F1179
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 18:22:29 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com
	[209.85.208.175])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 157D17E2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 18:22:29 +0000 (UTC)
Received: by mail-lj1-f175.google.com with SMTP id q127-v6so2641486ljq.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 18 Sep 2018 11:22:28 -0700 (PDT)
MIME-Version: 1.0
References: <2072478.UYspZ1xLTN@avalon> <20180917115916.37fd5388@coco.lan>
	<CAPM=9tzSaQX7iVCH94jrM+xgEveY4B8+DwQSykiE3L0BM-s-Pw@mail.gmail.com>
	<5b434160-07d9-4071-ac77-9d64ea69c980@email.android.com>
	<CAKMK7uExDUFjXcX6zPmZMjse6gf00bO-uBsjiWMk+vqjV2MEvQ@mail.gmail.com>
	<1537269419.3424.1.camel@HansenPartnership.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA24@USCULXMSG01.am.sony.com>
	<20180918165917.GA9728@chatter>
	<ECADFF3FD767C149AD96A924E7EA6EAF7C1EAA99@USCULXMSG01.am.sony.com>
	<20180918173148.GB9728@chatter> <20180918174913.GA22988@kroah.com>
In-Reply-To: <20180918174913.GA22988@kroah.com>
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date: Tue, 18 Sep 2018 11:22:15 -0700
Message-ID: <CAKdAkRSt7MpTmUFP8WEWPUKWjqUgfS4GhfSu+oT9E4ziDgYgTg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Tim.Bird@sony.com, ksummit-discuss@lists.linuxfoundation.org
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

On Tue, Sep 18, 2018 at 10:49 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Tue, Sep 18, 2018 at 01:31:48PM -0400, Konstantin Ryabitsev wrote:
> > So, what if we imagine that there's an imaginary web tool that does this:
> >
> > 1. Allows people to generate an account
> > 2. Verifies their email address
> > 3. Instructs people how to generate a patch or series of patches
> > 4. Gives a way to upload generated patches
> > 5. Runs checkpatch to make sure there are no errors
> > 6. Runs get_maintainer to find out where the patch(es) should be sent to
> > 7. (Does more imaginary magic, such as looking up message-id references)
> > 8. Mails it out
>
> That last step might be hard, you have to "mail it out" to look like it
> came from the original author, right?  Then all crud breaks out as you
> can't deliver an email from "sony.com" successfully.
>
> So you just provide them with a FOO1234@k.o account or some such
> munging, to reflect back to their original email address, but what
> happens when I ask for a change?  Are you now a "man in the middle"
> forwarding emails around everywhere?  That could get messy quickly.
>
> It's that feedback loop where things break down.  I only accept on
> average, 1/3 of the patches sent to me, so retrys are a part of life, as
> is a conversation about what went wrong to deserve a retry.
>
> If you can incorporate that, great, we just invented gerrit!  :)
>
> Seriously, it would be good, but no gerrit please...

Seconded. I swear 75% of time I spend on patch reviews that I do for
Chrome OS is spent on clicking around UI, not actually commenting on
the issues I find.

Thanks.

-- 
Dmitry
