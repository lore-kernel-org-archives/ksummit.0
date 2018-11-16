Return-Path: <mchehab+samsung@kernel.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 003CAB5F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 11:39:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org
	[198.137.202.133])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E435F771
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 16 Nov 2018 11:39:51 +0000 (UTC)
Date: Fri, 16 Nov 2018 03:39:47 -0800
From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20181116033947.5689b51c@silica.lan>
In-Reply-To: <e4efcfd8c99ef197714230cb1eb246b39dc83151.camel@perches.com>
References: <154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com>
	<154225761038.2499188.1270468803677883744.stgit@dwillia2-desk3.amr.corp.intel.com>
	<CAMuHMdVOJsM=66RrnbOzVthsT9=dFRQtL2rv99tCPC02M=hiXw@mail.gmail.com>
	<20181115061036.1575223d@silica.lan>
	<20181115162008.GO3759@mtr-leonro.mtl.com>
	<20181115110919.46978343@silica.lan>
	<20181115193520.GA24359@mtr-leonro.mtl.com>
	<3908561D78D1C84285E8C5FCA982C28F7D459E55@ORSMSX110.amr.corp.intel.com>
	<e4efcfd8c99ef197714230cb1eb246b39dc83151.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Em Thu, 15 Nov 2018 11:43:51 -0800
Joe Perches <joe@perches.com> escreveu:

> On Thu, 2018-11-15 at 19:40 +0000, Luck, Tony wrote:
> > > I would recommend to remove this section at all.
> > > New maintainers won't come out of blue, but will be come
> > > from existing community and such individuals for sure will see
> > > and judge by themselves to whom they trust and to whom not.  
> > 
> > Perhaps this is more of a hint to contributors than to maintainers
> > (see earlier discussion on who is the target audience for these documents).
> > 
> > It would help contributors know some names of useful reviewers (and
> > thus this list should be picked up by scripts/get_maintainer.pl to help
> > the user compose Cc: lists for e-mail patches).  
> 
> Trusted reviewers should be specifically listed
> in the MAINTAINERS file with an "R:" entry.
> 
> get_maintainers should not look anywhere else.

I know that making get_maintainers to look elsewhere can make it more
complex and slower, but IMHO, by having a per-subsystem profile, this is
unavoidable.

The thing is that touching at a single MAINTAINERS file every time a new
reviewer comes is painful. Also, MAINTAINERS file format doesn't allow
adding free text explaining the criteria for someone to become a
reviewer.

IMO, having reviewers on a per-subsystem file, where one could explain
the criteria for being added there will make easier to attract more
reviewers.

Cheers,
Mauro
