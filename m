Return-Path: <greg@kroah.com>
Date: Wed, 14 Sep 2016 16:32:05 +0200
From: Greg KH <greg@kroah.com>
To: Joe Perches <joe@perches.com>
Message-ID: <20160914143205.GA11149@kroah.com>
References: <b72e9a2e-64d4-12af-1af3-adf963151466@de.ibm.com>
	<20160913194520.GA8071@cloud> <20160913140322.3ccad27c@lwn.net>
	<4691924.fimvUkKjuv@vostro.rjw.lan> <20160914020332.GA9558@cloud>
	<1473819862.32273.16.camel@perches.com>
	<20160914115456.GB22341@kroah.com>
	<1473863028.32273.28.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1473863028.32273.28.camel@perches.com>
Cc: ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] checkpatch/Codingstyle and
 trivial patch spam
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Wed, Sep 14, 2016 at 07:23:48AM -0700, Joe Perches wrote:
> On Wed, 2016-09-14 at 13:54 +0200, Greg KH wrote:
> > On Tue, Sep 13, 2016 at 07:24:22PM -0700, Joe Perches wrote:
> > > On Tue, 2016-09-13 at 19:03 -0700, Josh Triplett wrote:
> > > > "Do
> > > > not mass-reformat existing code, even if it doesn't follow these
> > > > guidelines; doing so creates noise in version control history and makes
> > > > patches fail to apply."
> > > Or maybe add something like a new entry for what types of changes
> > > are acceptable with a default of "none"
> > > C:	Whitespace and Style
> > Ick, no, we have way too many things in the MAINTAINERS file as it is...
> 
> So what would use propose instead?
> 
> I think the primary issue is people using "scripts/checkpatch.pl -f"
> 
> I think that shouldn't be done without an understanding of when
> it is useful and when it is not useful to use that -f option.

I agree, people get annoyed by this.  I personally think that anyone who
does get annoyed by it should just ignore them, or fix up the code to
not get triggered by the reports.

But who am I to complain :)

> I have proposed adding an undocumented --force option to checkpatch
> which would disallow -f unless --force is also used.
> 
> https://lkml.org/lkml/2015/2/11/433
> 
> Does anyone object to this?

None from me.

thanks,

greg k-h
