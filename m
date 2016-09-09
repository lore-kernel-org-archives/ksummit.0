Return-Path: <gregkh@linuxfoundation.org>
Date: Fri, 9 Sep 2016 13:03:28 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160909110328.GA6356@kroah.com>
References: <20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon> <20160906003532.GA3950@sirena.org.uk>
	<1473175831.17204.29.camel@HansenPartnership.com>
	<20160906194404.GA22363@kroah.com>
	<20160906222058.GS3950@sirena.org.uk>
	<10203253-0df5-4ff3-8cd4-9e6b38661d57@email.android.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D73F2@USCULXMSG01.am.sony.com>
	<20160908191930.GA32595@kroah.com>
	<20160909104545.GG27946@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160909104545.GG27946@sirena.org.uk>
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>, Baolin.Wang@linaro.org
Subject: Re: [Ksummit-discuss] [Stable kernel] feature backporting
 collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 09, 2016 at 11:45:45AM +0100, Mark Brown wrote:
> On Thu, Sep 08, 2016 at 09:19:30PM +0200, gregkh@linuxfoundation.org wrote:
> > On Thu, Sep 08, 2016 at 06:55:12PM +0000, Bird, Timothy wrote:
> 
> > > I think that it's important to identify key features that inhibit non-vendor developers
> > > from working on stuff in mainline, and fix those.  That's why I've got a bee in my bonnet
> > > about USB charging.
> 
> > Why about that topic?  NO ONE SUBMITTED PATCHES FOR IT!  Until recently,
> > and that's only because Linaro decided to pick one of the random vendor
> > tree solutions and tried to upstream it.
> 
> Baolin wrote all that code from scratch - it's not based off a vendor
> tree.

Oh that's even worse!  Well, worse from the case of "the vendors
shipping this type of functionality really do not care".

> > That's kind of proof that upstream is being flat-out ignored...
> 
> Or that people were working on other things, it's not like this is the
> only thing that people are missing in mainline.

What is the list of things that you know of that we are currently
missing?

> > could really do here.  Except congratulate Linaro for doing the dirty
> > work, they are doing good stuff here in trying to reduce the delta.
> 
> Thanks, especially to Baolin for his persistence.

Yes, that's a great job, especially given that it was started "from
scratch".

greg k-h
