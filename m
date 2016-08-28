Return-Path: <gregkh@linuxfoundation.org>
Date: Sun, 28 Aug 2016 19:59:07 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Joe Perches <joe@perches.com>
Message-ID: <20160828175907.GA9615@kroah.com>
References: <1472330452.26978.23.camel@perches.com>
	<20160828005636.GB19088@sasha-lappy>
	<1472348579.26978.47.camel@perches.com>
	<20160828023807.GC19088@sasha-lappy>
	<1472404557.26978.84.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1472404557.26978.84.camel@perches.com>
Cc: LKML <linux-kernel@vger.kernel.org>, Sasha Levin <levinsasha928@gmail.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] checkkpatch (in)sanity ?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sun, Aug 28, 2016 at 10:15:57AM -0700, Joe Perches wrote:
> On Sat, 2016-08-27 at 22:47 -0400, Levin, Alexander wrote:
> > > > By default you should only get the most critical warnings we have in the
> > > > kernel like missing S-O-B or corrupt patch.
> > > I don't think so, but if you do, add a filter for ERROR only.
> > I could, but the problem is the people who see the default output as "holy".
> 
> Personally, I think the "my first kernel patch" beginners were
> overly encouraged to produce these checkpatch whitespace type
> changes by a couple things:
> 
> o Greg KH's TuxRadar article back in 2010
>   http://www.tuxradar.com/content/newbies-guide-hacking-linux-kernel
> o The Eudyptula Challenge
>   http://eudyptula-challenge.org/
> 
> I don't know if the Eudyptula scripts are specific to
> drivers/staging and most of those beginners haven't read his
> email from 2015 that essentially says "don't do that" on
> anything other than drivers/staging.

I have been assured that Eudyptula says to stick only with
drivers/staging/  If anyone knows otherwise, please let me know and I
will work to resolve that.

thanks,

greg k-h
