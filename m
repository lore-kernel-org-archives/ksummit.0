Return-Path: <daniel.vetter@ffwll.ch>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4E9F9899
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 07:13:40 +0000 (UTC)
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B9BF713A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 07:13:39 +0000 (UTC)
Received: by mail-oi0-f67.google.com with SMTP id l9so6969673oih.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 21 Jul 2016 00:13:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20160715042938.GA5527@kroah.com>
References: <718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
	<20160714031753.GA28722@kroah.com>
	<20160714100603.GJ9976@sirena.org.uk>
	<20160715002239.GA31603@kroah.com>
	<5788337F.8000500@roeck-us.net> <20160715014103.GA5791@kroah.com>
	<578850EB.3090109@roeck-us.net> <20160715042938.GA5527@kroah.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 21 Jul 2016 09:13:37 +0200
Message-ID: <CAKMK7uGPWusxsCRt9yELDrVd1v+rNsH3UWeTZdVBOZv+zw=iYA@mail.gmail.com>
To: Greg KH <greg@kroah.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Trond Myklebust <trondmy@primarydata.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 15, 2016 at 6:29 AM, Greg KH <greg@kroah.com> wrote:
> On Thu, Jul 14, 2016 at 07:56:43PM -0700, Guenter Roeck wrote:
>> Overall, I can not imagine that it is even possible to use quilt trees as basis
>> for development in a company with if active kernel development, even more so
>> if a large number of engineers and/or a number of branches are involved.
>> Sure, the QCOM example may be extreme, but do you really think that writing
>> those 2.5M LOC would have been possible if QCOM had used Quilt trees instead
>> of git ? Using Quilt would for sure have prevented them from writing those
>> 2.5M LOC, but then there would be nothing. That doesn't sound like a feasible
>> alternative either.
>
> It is possible, look at the Red Hat and SuSE kernel development teams.
> Yes, in the end, most of the patches are backports from upstream, but
> during new releases they use quilt for all of their work, adding and
> removing and updating patches all the time.
>
> There are the usual merge issues with doing that, but for an SoC, I
> don't think that would be all that hard given that almost all patches
> are driver/subsystem-specific and don't touch other places.
>
> It does take a better calibre of developer to do this type of thing,
> that might be a harder thing to deal with at some SoC vendors :)

Random tool plug: I stitched together a quilt+git thing, which through
hidden git refs makes sure that the underlying git baseline also gets
pushed around together with the quilt patches. Allows awesome stuff
like bisecting changes in the quilt pile over rebases:

https://cgit.freedesktop.org/drm-intel/tree/qf?h=maintainer-tools

We use that to maintain the internal drm/i915 patches. Unfortunatel
everyone else uses plain git, since I fully agree with Greg: Quilt (or
some other pile-of-patches tool) is the only way to sanely manage
kernel trees which aren't directly upstream.

And yes it also takes a decent calibre of developer with some
understanding of the tooling to make effective use of it.
-Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
