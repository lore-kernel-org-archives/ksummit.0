Return-Path: <dan.j.williams@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8CA9586E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Nov 2018 19:31:21 +0000 (UTC)
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com
	[209.85.167.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0B312318
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Nov 2018 19:31:19 +0000 (UTC)
Received: by mail-oi1-f194.google.com with SMTP id p82-v6so2479306oih.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 20 Nov 2018 11:31:19 -0800 (PST)
MIME-Version: 1.0
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
	<20181115061036.1575223d@silica.lan>
	<20181115162008.GO3759@mtr-leonro.mtl.com>
	<CABVU7+twSz3OZx7PTO+bS-wfLfTTjZVhRAnhgtcs6KWwntattw@mail.gmail.com>
	<CAPcyv4hWK+to6vOSfSdeVMDzUutYwg9=XqshSDzaCf0c-u8jLA@mail.gmail.com>
	<20181118110324.543edbd8@coco.lan> <8736rwgoem.fsf@intel.com>
In-Reply-To: <8736rwgoem.fsf@intel.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 20 Nov 2018 11:31:08 -0800
Message-ID: <CAPcyv4j9UmWpufJpniGJgk48=smq_cQZyBGSCEdj2o5v4CdYLg@mail.gmail.com>
To: jani.nikula@intel.com
Content-Type: text/plain; charset="UTF-8"
Cc: mchehab+samsung@kernel.org, linux-nvdimm <linux-nvdimm@lists.01.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>, zwisler@kernel.org
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

On Tue, Nov 20, 2018 at 12:09 AM Jani Nikula <jani.nikula@intel.com> wrote:
>
> On Sun, 18 Nov 2018, Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> > Hmm.. Perhaps the subsystem profile should point to IRC channels if any?
> > Several subsystems use them in order to provide newbies some directions
> > and to discuss other development issues.
>
> MAINTAINERS:
>
>         C: URI for chat protocol, server and channel where developers
>            usually hang out, for example irc://server/channel.
>
> Alas very few subsystems have added that.
>
> I actually fear very few subsystems will add a subsystem profile for
> that matter.

I'm not too worried about the adoption rate of the Subsystem Profile.
If a few subsystems pick it up and contributors find it useful then it
will naturally proliferate, if not then perhaps the initial concern
about contributor pain stumbling through the discovery of these local
policy details was misplaced.
