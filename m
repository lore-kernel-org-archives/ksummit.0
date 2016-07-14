Return-Path: <greg@kroah.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 014269C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 03:17:47 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
	[66.111.4.29])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CFE8317E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 14 Jul 2016 03:17:45 +0000 (UTC)
Date: Thu, 14 Jul 2016 12:17:53 +0900
From: Greg KH <greg@kroah.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160714031753.GA28722@kroah.com>
References: <1468058721.2557.9.camel@HansenPartnership.com>
	<0ED98206-0A66-48A4-B5A4-A0BC53FDBF05@primarydata.com>
	<1468114447.2333.12.camel@HansenPartnership.com>
	<A4E16736-A5CB-4915-9A02-82065AE2E062@primarydata.com>
	<1468115770.2333.15.camel@HansenPartnership.com>
	<CAPcyv4gQ+3aF+DhRVDioBD7O63VRDG+VAm3x0zVDDh4hg8kJig@mail.gmail.com>
	<718BE1FD-6169-4205-A905-53F997D5943A@primarydata.com>
	<5785C80F.4030707@linaro.org> <20160713090739.GA18037@kroah.com>
	<20160713143447.GH9976@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160713143447.GH9976@sirena.org.uk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Trond Myklebust <trondmy@primarydata.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] kernel unit testing
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Jul 13, 2016 at 03:34:47PM +0100, Mark Brown wrote:
> On Wed, Jul 13, 2016 at 06:07:39PM +0900, Greg KH wrote:
> > On Wed, Jul 13, 2016 at 01:48:15PM +0900, Alex Shi wrote:
> 
> > > I am thinking if it's possible to share an basic tree which include some
> > > widely wanted backporting features. That could share the testing and review,
> > > then will reduce bugs much more.
> 
> > Like LTSI already does today?  :)
> 
> There was a lot of pushback against LTSI,

pushback from whom?

> the most concrete bit I could
> see was the inclusion of board support and vendor specific drivers -

That's exactly the goal of LTSI.

> people doing products won't care so much but people releasing source
> weren't thrilled with the idea of it ending up either conflicting with
> their internal work or showing up in the diffstat of what they release.

What is conflicting?  BSP and drivers for hardware that you don't use?

confused,

greg k-h
