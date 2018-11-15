Return-Path: <joe@perches.com>
Received: from smtp2.linuxfoundation.org (smtp2.linux-foundation.org
	[172.17.192.36])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A6B19890
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 08:40:32 +0000 (UTC)
Received: from smtprelay.hostedemail.com (smtprelay0039.hostedemail.com
	[216.40.44.39])
	by smtp2.linuxfoundation.org (Postfix) with ESMTPS id 451341DCF0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 08:40:32 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave05.hostedemail.com (Postfix) with ESMTP id 72D561804E564
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 19:43:56 +0000 (UTC)
Message-ID: <e4efcfd8c99ef197714230cb1eb246b39dc83151.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: "Luck, Tony" <tony.luck@intel.com>, Leon Romanovsky <leon@kernel.org>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Date: Thu, 15 Nov 2018 11:43:51 -0800
In-Reply-To: <3908561D78D1C84285E8C5FCA982C28F7D459E55@ORSMSX110.amr.corp.intel.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
	<20181115061036.1575223d@silica.lan>
	<20181115162008.GO3759@mtr-leonro.mtl.com>
	<20181115110919.46978343@silica.lan>
	<20181115193520.GA24359@mtr-leonro.mtl.com>
	<3908561D78D1C84285E8C5FCA982C28F7D459E55@ORSMSX110.amr.corp.intel.com>
Content-Type: text/plain; charset="ISO-8859-1"
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Cc: "Jiang, Dave" <dave.jiang@intel.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	"linux-nvdimm@lists.01.org" <linux-nvdimm@lists.01.org>, "Verma,
	Vishal L" <vishal.l.verma@intel.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"zwisler@kernel.org" <zwisler@kernel.org>
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

On Thu, 2018-11-15 at 19:40 +0000, Luck, Tony wrote:
> > I would recommend to remove this section at all.
> > New maintainers won't come out of blue, but will be come
> > from existing community and such individuals for sure will see
> > and judge by themselves to whom they trust and to whom not.
> 
> Perhaps this is more of a hint to contributors than to maintainers
> (see earlier discussion on who is the target audience for these documents).
> 
> It would help contributors know some names of useful reviewers (and
> thus this list should be picked up by scripts/get_maintainer.pl to help
> the user compose Cc: lists for e-mail patches).

Trusted reviewers should be specifically listed
in the MAINTAINERS file with an "R:" entry.

get_maintainers should not look anywhere else.
