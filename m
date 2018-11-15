Return-Path: <tony.luck@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 89217E19
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 19:40:46 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 0918B815
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 15 Nov 2018 19:40:45 +0000 (UTC)
From: "Luck, Tony" <tony.luck@intel.com>
To: Leon Romanovsky <leon@kernel.org>, Mauro Carvalho Chehab
	<mchehab+samsung@kernel.org>
Date: Thu, 15 Nov 2018 19:40:44 +0000
Message-ID: <3908561D78D1C84285E8C5FCA982C28F7D459E55@ORSMSX110.amr.corp.intel.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
	<20181115061036.1575223d@silica.lan>
	<20181115162008.GO3759@mtr-leonro.mtl.com>
	<20181115110919.46978343@silica.lan>
	<20181115193520.GA24359@mtr-leonro.mtl.com>
In-Reply-To: <20181115193520.GA24359@mtr-leonro.mtl.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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

> I would recommend to remove this section at all.
> New maintainers won't come out of blue, but will be come
> from existing community and such individuals for sure will see
> and judge by themselves to whom they trust and to whom not.

Perhaps this is more of a hint to contributors than to maintainers
(see earlier discussion on who is the target audience for these documents).

It would help contributors know some names of useful reviewers (and
thus this list should be picked up by scripts/get_maintainer.pl to help
the user compose Cc: lists for e-mail patches).

-Tony
