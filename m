Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1B5578F5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Nov 2018 11:12:42 +0000 (UTC)
Received: from casper.infradead.org (casper.infradead.org [85.118.1.10])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9E671786
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Nov 2018 11:12:41 +0000 (UTC)
Date: Mon, 26 Nov 2018 09:12:29 -0200
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20181126091229.04b5dce0@coco.lan>
In-Reply-To: <8736rwgoem.fsf@intel.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
	<20181115061036.1575223d@silica.lan>
	<20181115162008.GO3759@mtr-leonro.mtl.com>
	<CABVU7+twSz3OZx7PTO+bS-wfLfTTjZVhRAnhgtcs6KWwntattw@mail.gmail.com>
	<CAPcyv4hWK+to6vOSfSdeVMDzUutYwg9=XqshSDzaCf0c-u8jLA@mail.gmail.com>
	<20181118110324.543edbd8@coco.lan> <8736rwgoem.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: linux-nvdimm <linux-nvdimm@lists.01.org>,
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

Hi Jani,

Em Tue, 20 Nov 2018 10:10:25 +0200
Jani Nikula <jani.nikula@intel.com> escreveu:

> On Sun, 18 Nov 2018, Mauro Carvalho Chehab <mchehab+samsung@kernel.org> wrote:
> > Hmm.. Perhaps the subsystem profile should point to IRC channels if any?
> > Several subsystems use them in order to provide newbies some directions
> > and to discuss other development issues.  
> 
> MAINTAINERS:
> 
> 	C: URI for chat protocol, server and channel where developers
> 	   usually hang out, for example irc://server/channel.
> 
> Alas very few subsystems have added that.
> 
> I actually fear very few subsystems will add a subsystem profile for
> that matter.

Sorry for a late reply. In the case of the media subsystem, we
actually use 2 different channels, one when the matter is related
to digital TV (#linuxtv) and another one for the rest (#v4l), both
at freenode.

That's something that wouldn't fit well into MAINTAINERS file, as
we can't explain what should be used for each.

So, the way it is it won't work well for us.

Thanks,
Mauro
