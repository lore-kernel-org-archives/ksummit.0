Return-Path: <gregkh@linuxfoundation.org>
Date: Thu, 8 Sep 2016 21:19:30 +0200
From: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
To: "Bird, Timothy" <Tim.Bird@am.sony.com>
Message-ID: <20160908191930.GA32595@kroah.com>
References: <57C78BE9.30009@linaro.org> <20160905111105.GW3950@sirena.org.uk>
	<20160905140327.a6wgdl3lr42nlww4@thunk.org>
	<9895277.d39OTXtlqC@avalon> <20160906003532.GA3950@sirena.org.uk>
	<1473175831.17204.29.camel@HansenPartnership.com>
	<20160906194404.GA22363@kroah.com>
	<20160906222058.GS3950@sirena.org.uk>
	<10203253-0df5-4ff3-8cd4-9e6b38661d57@email.android.com>
	<ECADFF3FD767C149AD96A924E7EA6EAF053D73F2@USCULXMSG01.am.sony.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ECADFF3FD767C149AD96A924E7EA6EAF053D73F2@USCULXMSG01.am.sony.com>
Cc: James Bottomley <James.Bottomley@Hansenpartnership.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
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

On Thu, Sep 08, 2016 at 06:55:12PM +0000, Bird, Timothy wrote:
> > -----Original Message-----
> > From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
> > discuss-bounces@lists.linuxfoundation.org] On Behalf Of James Bottomley
> > On September 6, 2016 6:20:58 PM EDT, Mark Brown <broonie@kernel.org>
> > wrote:
> > >On Tue, Sep 06, 2016 at 09:44:04PM +0200, gregkh@linuxfoundation.org
> > >wrote:
> > >> On Tue, Sep 06, 2016 at 11:30:31AM -0400, James Bottomley wrote:
> > >> >    3. Increase the pain.  Not sure I like this, but in theory, we
> > >could
> > >> >       churn the upstream API to increase the pain of upports, but
> > >it would
> > >> >       also cause a lot of issues with backports.
> > >
> > >> I tried doing this in the past.  It did cause pain for out-of-tree
> > >> modules, but then they got really good and abstracted things away so
> > >> that it made their future kernel porting efforts even easier than
> > >> before, making their need to upstream code even less.  And then when
> > >> they did want to upstream stuff, it took more work unwinding the
> > >> abstraction layer.
> > >
> > >> So watch out for unintended consequences here :)
> > >
> > >The other big unintended consequence I'd worry about here is that it
> > >will present an obstacle to someone who wants to try to upstream
> > >something while working in a downstream environment - if someone is
> > >looking at some code but the changes for upstream are too great then it
> > >might make it too much work for them to try if it's not their primary
> > >job.
> > >
> > >I'd also worry about annoying people who are working upstream as well,
> > >it's annoying having things break randomly due to API changes (both as
> > >the submitter and as a maintainer or reviewer).
> > 
> > Ok, so everyone went straight for the option I didn't like. I knew I shouldn't have
> > included it.   So what about options 1 or 2, or even something I hadn't thought
> > of?
> 
> I think that it's important to identify key features that inhibit non-vendor developers
> from working on stuff in mainline, and fix those.  That's why I've got a bee in my bonnet
> about USB charging.

Why about that topic?  NO ONE SUBMITTED PATCHES FOR IT!  Until recently,
and that's only because Linaro decided to pick one of the random vendor
tree solutions and tried to upstream it.

That's kind of proof that upstream is being flat-out ignored...

> We've got literally over a billion devices in the field that run Linux, but can't run mainline.
> This is very different from the enterprise space, where you can run a mainline kernel but
> you're just missing a few thousand vendor patches.  Basic functionality will still work.
> 
> There are thousands of non-vendor kernel developers working on these devices. Some of
> them, I believe, would play around with this stuff and contribute to mainline, if they could
> use it on their devices.  Option 3, by the way, makes it harder for that category of developer
> to contribute.

Well for this topic, upstream was ignored, so I don't know what else we
could really do here.  Except congratulate Linaro for doing the dirty
work, they are doing good stuff here in trying to reduce the delta.

thanks,

greg k-h
