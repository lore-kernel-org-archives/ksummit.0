Return-Path: <Alexander.Levin@microsoft.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id BF5E8FA4
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 21:13:45 +0000 (UTC)
Received: from NAM04-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr700107.outbound.protection.outlook.com [40.107.70.107])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id F2AA37C7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  7 Sep 2018 21:13:44 +0000 (UTC)
From: Sasha Levin <Alexander.Levin@microsoft.com>
To: Greg KH <gregkh@linuxfoundation.org>
Date: Fri, 7 Sep 2018 21:13:42 +0000
Message-ID: <20180907211341.GJ16300@sasha-vm>
References: <20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<CA+55aFwfcNuH4p+rKHuQcgOSt3coT=cN6ZdSG1OKNQ5GTWgoxg@mail.gmail.com>
	<20180907014930.GE16300@sasha-vm>
	<2534be10-2e70-6932-39c1-7caca2cff044@roeck-us.net>
	<4990d2c1-6f26-0500-9afa-986a61fce3bf@redhat.com>
	<20180907150623.GH16300@sasha-vm>
	<9fb15d7c-c59f-ee21-9c30-6d81d53a1456@redhat.com>
	<20180907160945.GI16300@sasha-vm> <20180907202328.GE25756@kroah.com>
In-Reply-To: <20180907202328.GE25756@kroah.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0A061B590C8D3D4A8F4DAFB6D35B75A4@namprd21.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 10:23:28PM +0200, Greg KH wrote:
>On Fri, Sep 07, 2018 at 04:09:46PM +0000, Sasha Levin via Ksummit-discuss =
wrote:
>> What are your thoughts about a stable-next branch of sorts where we can
>> push stable tagged fixes as soon as they hit either Linus's tree or
>> maybe the pending-fixes branch in linux-next?
>>
>> This way we'll have a longer term stable tree to test, and Greg can just
>> cut releases from there.
>
>No one will pay attention to "stable-next", why would putting something
>there be any different from what I do now?  We run all of the normal
>bots on the stable-rc releases, putting it out for a week longer would
>not cause anything else to happen.

We run bots on stable-rc, but the point I think Laura was trying to make
(and I agree with) is that the 2-3 days of stable-rc isn't enough for
non-bot tests. We'd like to have actual users run stable-rc as well.

So yes, putting it for longer will add a lot more testing.

So the stable-next is just a way for folks to test out new stable
commits without you having to do longer -rc cycles or maintaining extra
trees.

Right now your workflow seems to be:

1. Grab a batch of ~2-3 week old commits from Linus's tree.
2. Review, basic tests and send stable-rc notification.
3. Wait a few days for reviews.
4. Ship it.

The part that's tricky here is that there are only a few days during
step 3 to test out that stable-rc kernel. Not enough for Fedora to let
their testers to get it and play around with.

With a -next branch, this might look something like this:

1. Grab stable tagged commits as they go in Linus's tree and put them on
top of the appropriate stable-next branches (i.e. linux-4.14.y-next).
2. X times a week pick a batch of ~2-3 week old commits, put them in the
-rc branch and send out a review request.
3. Wait a few days for reviews.
4. Ship it.

So it's very similar, but between steps 1 and 2 folks have a chance to
further test out stable commits. This is something that Fedora, for
example, could offer to it's testers as a kernel option.


--
Thanks,
Sasha=
