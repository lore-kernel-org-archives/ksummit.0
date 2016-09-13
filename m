Return-Path: <gregkh@linuxfoundation.org>
Date: Tue, 13 Sep 2016 08:19:31 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20160913061931.GC11047@kroah.com>
References: <57C78BE9.30009@linaro.org>
	<20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160912234548.GL27946@sirena.org.uk>
Cc: Tsugikazu Shibata <tshibata@ab.jp.nec.com>,
	"ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature
 backporting collaboration
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 13, 2016 at 12:45:48AM +0100, Mark Brown wrote:
> On Mon, Sep 12, 2016 at 07:14:50PM +0200, Greg KH wrote:
> > On Mon, Sep 12, 2016 at 05:27:14PM +0100, Mark Brown wrote:
> 
> > > for the users I talk to but there was always a very awkward period where
> > > people were looking for an announcement but no information to base
> > > things on.
> 
> > So, where should I do this "announcement" that will be seen by everyone?
> 
> I don't think it's a problem with location at the minute since you're
> fairly quick at posting on your G+ and blog (though I didn't spot
> anything on the stable list, it's possible I just can't see it due to
> the volume there though), that was more about the old pre v4.4 days.
> 
> > And remember, we are just trying out the "preanounce" thing this time,
> > let's see what happens, I'm not guaranteeing I will keep doing it...
> 
> Sure, and I think the main thing I'm saying here is that this lack of
> predictability in your future plans is something the people I talk to 
> mention and may be what Shibata-san was getting at also.
> 
> Part of the problem when the announcement was done after the release was
> that there was a lot of trying to read the runes and guess what'll
> happen and when going on behind the scenes, if people would like to
> follow the LTS but also have product deadlines they can end up walking a
> tightrope with their schedule and trying to predict LTS.  What you did
> with v4.4 (announcing during the -rc cycle) addresses this, as does what
> you've done this year pulling that even further forwards.  

4.4 was a total supprise to everyone, including me, it came out during
the kernel summit discussions, and we decided right there in the middle
of my talk to do it.  So there was no "preannouncement" possible there.

> If things don't work out with what you're doing with the preannouncement
> it might be good to comment on that that and say you intend to do
> something different next year, but hopefully everything will be fine of
> course.

I did that here as well, 4.9 was announced _way_ in advance.

I really don't know what else I can do here to make it easier.
Companies can always talk to me, and lots do, in trying to figure out
what the next kernel will be.  I work with them to show that it doesn't
really matter _what_ kernel is picked, if their code is merged upstream,
or ready to be merged, the specific kernel number doesn't matter.

And that's the key here, and is what we are all trying to work toward.
The ability for companies to easily update their kernels, getting the
latest security and bug fixes, and not have huge outstanding patches
that are impossible to rebase.

thanks,

greg k-h
