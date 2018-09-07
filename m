Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 930FDCCA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 23:52:08 +0000 (UTC)
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com
	[209.85.210.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 45B78786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 23:52:08 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id p12-v6so7725931pfh.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 07 Sep 2018 16:52:08 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Fri, 7 Sep 2018 16:52:05 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Sasha Levin <Alexander.Levin@microsoft.com>
Message-ID: <20180907235205.GA24388@roeck-us.net>
References: <4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
	<20180907160945.GI16300@sasha-vm>
	<20180907202328.GE25756@kroah.com>
	<20180907211341.GJ16300@sasha-vm>
	<CA+55aFyAWowFVi_UOkoJSfFb30Djk7JxRi4QFv7oJgpRKJxK0A@mail.gmail.com>
	<20180907224346.GA21546@roeck-us.net>
	<CA+55aFwqvy-NVg73RX-k0WNBU5FOyBFeOsBTbOr2N5egk6v_Mw@mail.gmail.com>
	<20180907225744.GL16300@sasha-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907225744.GL16300@sasha-vm>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 10:57:45PM +0000, Sasha Levin wrote:
> On Fri, Sep 07, 2018 at 03:53:08PM -0700, Linus Torvalds wrote:
> >On Fri, Sep 7, 2018 at 3:43 PM Guenter Roeck <linux@roeck-us.net> wrote:
> >>
> >> On Fri, Sep 07, 2018 at 03:27:01PM -0700, Linus Torvalds wrote:
> >> >
> >> > So maybe an automated "linux-next" that starts happening *before* the
> >> > rc stage would catch some things?
> >>
> >> And it does, as soon as Greg publishes a set of patches.
> >
> >Yes, yes, I was clearly not explaining myself well.
> >
> >I see all the reports that you (and Nathan, and Shuah, and others) do
> >for stable rc's. So I very much know that happens.
> >
> >But I was literally thinking of that week or two *before* Greg
> >actually picks up the stable patches because he wants to have them get
> >some testing in mainline first.
> >
> >*If* the same kinds of scripts that Greg and Sasha already use to pick
> >up their stable patches could be automated early, maybe the patches
> >would also get a bit of special testing in the *context* of the stable
> >tree? A special automated "these are marked for stable, but haven't
> >been picked up yet" stable-next testing thing?
> 
> I agree. This is what I was suggesting with stable-next branches.
> 
> I actually had something to do automatic testing of such commits as they
> get pushed upstream, sending mails with the results. For example: 
> https://lkml.org/lkml/2018/4/4/923 but folks complained it was too
> noisy.
> 
Wrong lesson, I think. You can still run those tests, just don't send
result e-mails but use the result as decision criteria if the patch should
be included in a stable release (and, if not, inform the submitter that
it won't be applied to stable because the test failed).

Guenter
