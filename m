Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9F9F3910
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:25:07 +0000 (UTC)
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 85CCC1FD47
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 23:25:06 +0000 (UTC)
Received: by mail-vc0-f178.google.com with SMTP id ij19so10006277vcb.9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 May 2014 16:25:05 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <yq1zji2hif7.fsf@sermon.lab.mkp.net>
References: <1400925225.6956.25.camel@dabdike.int.hansenpartnership.com>
	<20140525222923.GW15585@mwanda> <1401119598.3303.6.camel@dabdike>
	<alpine.LNX.2.00.1405271634080.28869@pobox.suse.cz>
	<1401224020.14454.92.camel@dabdike>
	<alpine.LNX.2.00.1405272316000.17241@pobox.suse.cz>
	<yq1zji2hif7.fsf@sermon.lab.mkp.net>
Date: Wed, 28 May 2014 16:25:05 -0700
Message-ID: <CAPcyv4jOzqu8g2gEhAf2tdNY0P=D-p6L8kz_zX9WgqPh-d8C_w@mail.gmail.com>
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

On Tue, May 27, 2014 at 5:10 PM, Martin K. Petersen
<martin.petersen@oracle.com> wrote:
>>>>>> "Jiri" == Jiri Kosina <jkosina@suse.cz> writes:
>
> Jiri> Are you implying that Linux is still not in a position to force HW
> Jiri> vendor companies to rather invest 30 man-minutes in order to have
> Jiri> a proper changelog and driver merged in Linus' tree compared to
> Jiri> receiving bad public press when they are being rejected
> Jiri> (especially for such negligible reason as changelog text)?
>
> There are a few companies in the enterprise space that get it. But in
> general it can be quite the challenge to get these vendors to see the
> value of being good Linux citizens. And these companies are much less
> susceptible to phoronix rants than entities producing consumer widgets.
>
> These companies have internal development processes that are often quite
> unfriendly to the way we work. More often than not, upstream drivers are
> trailing internal driver trees by many, many months. Patches are only
> sent upstream when there is a bit of slack in the engineering schedule.
>
> In many cases upstream Linux is not seen as an important target because
> the driver vendor will provide OEMs that ship their hardware with a
> "value added" outbox driver tarball or CD. The server vendors are
> partially to blame for keeping this dreadful anachronism alive. One
> would think that "It Just Works with RHEL/SLES/OL" would be better story
> than retrofitting tarball drivers and jeopardizing future kernel
> updates. According to the server vendors, however, customers expect to
> install an updated Linux driver just like they do on Windows. Otherwise
> the perception is that Linux is lagging behind or poorly supported.
> *sigh*
>
> Vendor driver release cycles are often tied exclusively to new silicon
> availability and internal firmware release schedules. Many vendors pay
> little to no attention to Linux development cycles. Furthermore, driver
> code is often shared between several operating systems so every patch
> needs to undergo IP/legal review before it can be submitted upstream.
> Internal commit messages often have partner references, bug numbers,
> code names, etc. in them. So it's typically easier to just drop the
> patch description than rewriting it and have the new text reviewed by
> the legal team.
>
> That's the sorry state of affairs. Part of the problem here is that many
> of the enterprise drivers have been in the kernel for a very long time.
> They predate things like staging and SubmittingPatches by many years.
> And we have been poor at communicating that things have changed and
> sometimes a bit too lenient at accepting patches.
>
> We have had a several discussions about this problem the last 6 months,
> including at LSF/MM. I have had meetings with several hw vendors this
> spring trying to educate them about our "new" rules of engagement. It's
> not easy, but I feel we're making progress. Worst case we'll send gregkh
> wielding a clue bat...

[ speaking for myself and glad to be employed by a hw vendor that
comes to a healthier conclusion ]

Isn't the fundamental problem:

HW Vendor: "Are you saying you may hold up driver updates for an
indefinite period of time?"

Kernel community: "Yes"

HW Vendor: "Ok, we'll keep sending our official updates direct to
customers as an out-of-tree tarball and let that 'upstream-thing'
happen in the background."

I.e. a conflict of "customer first" vs "upstream first"
