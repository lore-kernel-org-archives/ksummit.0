Return-Path: <geert.uytterhoeven@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4C22E8A5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 08:03:24 +0000 (UTC)
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
	[209.85.217.66])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D77A175B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 08:03:23 +0000 (UTC)
Received: by mail-vs1-f66.google.com with SMTP id p193so10828463vsd.7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 00:03:23 -0800 (PST)
MIME-Version: 1.0
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
In-Reply-To: <154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 15 Nov 2018 09:03:11 +0100
Message-ID: <CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
To: Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="UTF-8"
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	"linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>,
	vishal.l.verma@intel.com,
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

Hi Dan,

On Thu, Nov 15, 2018 at 6:06 AM Dan Williams <dan.j.williams@intel.com> wrote:
> Document the basic policies of the libnvdimm subsystem and provide a
> first example of a Subsystem Profile for others to duplicate and edit.
>
> Cc: Ross Zwisler <zwisler@kernel.org>
> Cc: Vishal Verma <vishal.l.verma@intel.com>
> Cc: Dave Jiang <dave.jiang@intel.com>
> Signed-off-by: Dan Williams <dan.j.williams@intel.com>

Thanks for your patch!

> --- /dev/null
> +++ b/Documentation/nvdimm/subsystem-profile.rst

> +Trusted Reviewers
> +-----------------
> +Johannes Thumshirn
> +Toshi Kani
> +Jeff Moyer
> +Robert Elliott

Don't you want to add email addresses?
Only the first one is listed in MAINTAINERS.

> +Time Zone / Office Hours
> +------------------------
> +8:00am to 5:00pm Pacific Time Zone

UTC-???

People are not familiar with all time zones.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds
