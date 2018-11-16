Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1DB0386B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 19:13:28 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 7031213A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 19:13:27 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id g188-v6so20503560oif.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 11:13:27 -0800 (PST)
MIME-Version: 1.0
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
In-Reply-To: <CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Fri, 16 Nov 2018 11:13:15 -0800
Message-ID: <CAPcyv4iSWMhNLeBGQsusgmQ99=duN88aNF8k1+BJn1ROAk=2OA@mail.gmail.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	linux-nvdimm <linux-nvdimm@lists.01.org>,
	Vishal L Verma <vishal.l.verma@intel.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	zwisler@kernel.org
Subject: Re: [Ksummit-discuss] [RFC PATCH 3/3] libnvdimm,
 MAINTAINERS: Subsystem Profile
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Thu, Nov 15, 2018 at 12:03 AM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
> Hi Dan,
>
> On Thu, Nov 15, 2018 at 6:06 AM Dan Williams <dan.j.williams@intel.com> wrote:
> > Document the basic policies of the libnvdimm subsystem and provide a
> > first example of a Subsystem Profile for others to duplicate and edit.
> >
> > Cc: Ross Zwisler <zwisler@kernel.org>
> > Cc: Vishal Verma <vishal.l.verma@intel.com>
> > Cc: Dave Jiang <dave.jiang@intel.com>
> > Signed-off-by: Dan Williams <dan.j.williams@intel.com>
>
> Thanks for your patch!
>
> > --- /dev/null
> > +++ b/Documentation/nvdimm/subsystem-profile.rst
>
> > +Trusted Reviewers
> > +-----------------
> > +Johannes Thumshirn
> > +Toshi Kani
> > +Jeff Moyer
> > +Robert Elliott
>
> Don't you want to add email addresses?

I do, but I had not cleared this designation with these folks ahead of
time. Will resolve that for v2.

> Only the first one is listed in MAINTAINERS.

Correct, the intent is that these individuals can be sought out for
advice when the maintainer may not have the bandwidth to engage with a
contributor on a given timeframe. These are individuals that can
provide a second opinion.

> > +Time Zone / Office Hours
> > +------------------------
> > +8:00am to 5:00pm Pacific Time Zone
>
> UTC-???
>
> People are not familiar with all time zones.

Yes, will fix.
