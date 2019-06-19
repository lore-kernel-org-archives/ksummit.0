Return-Path: <philip.li@intel.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 818F5B43
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 08:10:50 +0000 (UTC)
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3470C7DB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 08:10:50 +0000 (UTC)
Date: Wed, 19 Jun 2019 16:13:02 +0800
From: Philip Li <philip.li@intel.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20190619081301.GA19970@intel.com>
References: <20190614121137.02b8a6dc@coco.lan>
	<1560525785.27102.16.camel@HansenPartnership.com>
	<20190614124305.65eb8dbd@coco.lan>
	<1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan> <20190619075351.GP28859@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190619075351.GP28859@kadam>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org, kbuild@01.org,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [Ksummit-discuss] [kbuild] [MAINTAINERS SUMMIT] Pull network
 and Patch Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jun 19, 2019 at 10:53:51AM +0300, Dan Carpenter wrote:
> On Mon, Jun 17, 2019 at 10:31:15AM -0300, Mauro Carvalho Chehab wrote:
> > Also, usually, the bots don't build with W=1, as, on most subsystems,
> > this cause lots of warnings[1].
> > 
> > [1] On media, we have zero warnings with W=1.
> > 
> 
> We could ask the kbuild devs if they would consider making W=1 a per
> tree option.
thanks for the suggestion, we can consider this, at least for specific
repos.

> 
> regards,
> dan carpenter
> 
> _______________________________________________
> kbuild mailing list
> kbuild@lists.01.org
> https://lists.01.org/mailman/listinfo/kbuild
