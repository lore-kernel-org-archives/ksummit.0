Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 34DA5C03
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 07:56:16 +0000 (UTC)
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id DDB7987D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 19 Jun 2019 07:56:15 +0000 (UTC)
Date: Wed, 19 Jun 2019 10:53:51 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, kbuild@01.org
Message-ID: <20190619075351.GP28859@kadam>
References: <20190614135807.GA6573@kroah.com>
	<20190614121137.02b8a6dc@coco.lan>
	<1560525785.27102.16.camel@HansenPartnership.com>
	<20190614124305.65eb8dbd@coco.lan>
	<1560527386.27102.23.camel@HansenPartnership.com>
	<20190614130456.6c339c01@coco.lan>
	<1560528994.27102.34.camel@HansenPartnership.com>
	<20190614144836.0a71ebe5@coco.lan>
	<CAMuHMdUTDNFYJG5i26v5S6=YSHYomcVNaFNeQ=WhQfTOZxNiMw@mail.gmail.com>
	<20190617103115.670bf968@coco.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190617103115.670bf968@coco.lan>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	media-submaintainers@linuxtv.org,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Mon, Jun 17, 2019 at 10:31:15AM -0300, Mauro Carvalho Chehab wrote:
> Also, usually, the bots don't build with W=1, as, on most subsystems,
> this cause lots of warnings[1].
> 
> [1] On media, we have zero warnings with W=1.
> 

We could ask the kbuild devs if they would consider making W=1 a per
tree option.

regards,
dan carpenter
