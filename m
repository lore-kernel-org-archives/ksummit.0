Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2D443B32
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 05:17:57 +0000 (UTC)
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B56491FA97
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 29 May 2014 05:17:55 +0000 (UTC)
Received: by mail-wg0-f49.google.com with SMTP id m15so12017775wgh.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 22:17:54 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <yq1lhtldyhz.fsf@sermon.lab.mkp.net>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
	<CAPcyv4jOzqu8g2gEhAf2tdNY0P=D-p6L8kz_zX9WgqPh-d8C_w@mail.gmail.com>
	<yq1lhtldyhz.fsf@sermon.lab.mkp.net>
Date: Wed, 28 May 2014 22:17:53 -0700
Message-ID: <CAPcyv4itiMAzfRp4=msYskfn8ArQ6vE3=JLj9=Vt4mFQmOZWxw@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Content-Type: text/plain; charset=UTF-8
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [TOPIC] Encouraging more reviewers
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, May 28, 2014 at 9:01 PM, Martin K. Petersen
<martin.petersen@oracle.com> wrote:
>>>>>> "Dan" == Dan Williams <dan.j.williams@intel.com> writes:
>
> Dan,
>
> Dan> Isn't the fundamental problem:
>
> Dan> HW Vendor: "Are you saying you may hold up driver updates for an
> Dan> indefinite period of time?"
>
> Dan> Kernel community: "Yes"
>
> There's a big difference between a driver bug fix and "value added"
> features that are deemed too ugly to be included upstream.

Yes, ill conceived "value add" is indeed toxic.  Is that the only
contributor factor to indefinite patch acceptance latency?  We're
missing a mechanism to allow for experimentation without 1/ risking
the quality of the rest of the kernel 2/ committing to carrying the
experiment upstream indefinitely.  Upstream acceptance should not be a
precedent setting event.

> Dan> HW Vendor: "Ok, we'll keep sending our official updates direct to
> Dan> customers as an out-of-tree tarball and let that 'upstream-thing'
> Dan> happen in the background."
>
> Well, and thus forcing the customer to void their distro support. I
> don't think that's doing anyone a favor.
>

Assuming everyone consumes enterprise Linux via an enterprise OSV then
there isn't a problem.  Outside of that, the HW vendor is forced to
either cover the gap, or watch their competitor do it.
