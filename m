Return-Path: <gregkh@linuxfoundation.org>
Date: Tue, 13 Sep 2016 15:12:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Josh Boyer <jwboyer@fedoraproject.org>
Message-ID: <20160913131249.GA8470@kroah.com>
References: <20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>
	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>
	<20160913061931.GC11047@kroah.com>
	<20160913103814.GQ27946@sirena.org.uk>
	<20160913120942.GA18307@kroah.com>
	<CA+5PVA62NMb5dziRohcSPat5mU-yGzNrDuUFhTYr8Qip306VAg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+5PVA62NMb5dziRohcSPat5mU-yGzNrDuUFhTYr8Qip306VAg@mail.gmail.com>
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

On Tue, Sep 13, 2016 at 08:20:59AM -0400, Josh Boyer wrote:
> On Tue, Sep 13, 2016 at 8:09 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> > On Tue, Sep 13, 2016 at 11:38:14AM +0100, Mark Brown wrote:
> >> On Tue, Sep 13, 2016 at 08:19:31AM +0200, Greg KH wrote:
> >> > what the next kernel will be.  I work with them to show that it doesn't
> >> > really matter _what_ kernel is picked, if their code is merged upstream,
> >> > or ready to be merged, the specific kernel number doesn't matter.
> >>
> >> In the cases I'm aware of it's more about knowing when the kernel will
> >> appear so people can commit to integration activities than the version
> >> number itself - I've never really heard "I need version X", it's always
> >> been "when will we know which version Greg has chosen?".
> >
> > Yes, I hear that a lot, so you need to follow up with, "why does it
> > matter what version Greg picks?", and then their response to me always
> > is, "so we know what kernel to start to rebase our huge patchsets to
> > earlier", which again, is the thing we want to keep them from doing!
> >
> > I got a few emails when I stopped 3.14.y this week along the lines of,
> > "oops, we were using that kernel, what are we supposed to do now!"  Each
> > time I asked if 4.4 or 4.8 worked for them.  And each time I got back a
> > response a day later along the lines of, "oh wow, yes, it does, we'll
> > use that."
> >
> > I have half-a-mind to just skip a LTS kernel for a whole year and see if
> > anyone even notices, I feel it is being used for all the wrong
> > reasons...
> 
> What are the right reasons?  I've always found the LTS kernels to be a
> weird thing.  They don't serve the same purpose the normal stable
> kernels do for users (fixes after initial release, before the next
> release).  They don't serve the same purpose as a vendor kernel
> (hardened, stable, tuned, supported).  Developers tend to abuse them
> as you've descried.  So I guess I've forgotten the original intention
> of the LTS kernels to begin with.  Could you remind me (us)?

Originally it was to make my "day job" of maintaining an enterprise
kernel (SLES) easier (didn't have to have a bunch of bugfixes listed in
the spec file, took advantage of more testers, got to do stable kernel
work on company time, etc.)

But then, others used it for their "products", especially the embedded
space, as they wanted to support a single kernel for the lifetime of the
product.  So they asked for a kernel a year for this.

But, it turned out that they would only use the kernel series for a
while during the development phase, and then stop after they "shipped"
the device.  Look at all of the Android phones sitting on old obsolete
versions of 3.4 and 3.10 stable kernels.  They aren't even updated to
newer ones, and so, it didn't really help all that much.  Even though I
am fixing security bugs for these kernels, no one pushes them to the
users.  I have an example of a security bug that a Google researcher
found in a 3.10 kernel (but not mainline) I fixed and pushed out an
update, but never got picked up in Nexus phones until 6 months later
when I found the right person/group to poke within Google.

That was a 6 month window where anyone could have gotten root on your
phone, easily.

People say "look, we are using an LTS kernel in our product, all must be
good!" but if they don't update it, it's broken and insecure, and really
no better than if they were using 3.10.0 in a way.

But if we didn't provide an LTS, would companies constantly update their
kernels to newer releases to keep up with the security and bugfixes?
That goes against everything those managers/PMs have ever been used to
in the past, yet it's actually the best thing they could do.  It's a
long road of education and doing work on their part to get test
frameworks set up to be able to qualify "larger" upgrades.  It also
requires that their chip vendor not add 1.5 million lines of code to
their kernel, rewrite the scheduler, and duplicate all existing drivers
with a "-2" suffix.

Ok, this is rambling, and something I've been mulling over for a while
now.  I'm working with some people at some of the chip companies to see
about how we can do this better, hopefully the work of education,
testing, and other assurances can help everyone out in the end, and
start to resolve these issues, but it's going to be slow going.

Yes, I'll have an LTS this year, but next year?  Maybe not, my dream
would be that it wouldn't be needed.  And one has to dream :)

thanks,

greg k-h
