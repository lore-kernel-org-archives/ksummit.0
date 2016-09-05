Return-Path: <laurent.pinchart@ideasonboard.com>
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Mon, 05 Sep 2016 12:28:17 +0300
Message-ID: <1656524.OIRTMDr3jV@avalon>
In-Reply-To: <20160903000518.GN3950@sirena.org.uk>
References: <57C78BE9.30009@linaro.org> <20160902191637.GC6323@sasha-lappy>
	<20160903000518.GN3950@sirena.org.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "ltsi-dev@lists.linuxfoundation.org" <ltsi-dev@lists.linuxfoundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
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

On Saturday 03 Sep 2016 01:05:18 Mark Brown wrote:
> On Fri, Sep 02, 2016 at 03:16:37PM -0400, Levin, Alexander wrote:
> > Look at KASLR and KASan, it has complex interactions with pretty much the
> > rest of the kernel. Quite a few things not directly related to either of
> > those had to be fixed just because they were found to not integrate right
> > (For example, KASLR uncovered a bunch of bugs before it was actually
> > merged in), who says that there aren't any similar interactions with the
> > older kernels that no one looked into?
> 
> Sure, and this sort of thing is one of the reasons we have the ability
> to disable things in Kconfig.  It's not risk free but it's very much
> mitigated compared to tracking mainline.
> 
> > > It's what people are doing for products, they want newer features but
> > > they also don't want to rebase their product kernel onto mainline as
> > > that's an even bigger integration risk.  People aren't using this kernel
> > 
> > I'm sorry but just calling a kernel "stable" doesn't mean that suddenly it
> > acquires the qualities of a stable kernel that follows the very strict
> > rules we have for those.
> > 
> > Given that you're backporting features into a stable kernel it really
> > inherits the code quality of a release candidate kernel; nowhere close to
> > a stable kernel.
> > 
> > This following is just my opinion as an LTS kernel maintainer: if you
> > think
> > that the integration risk of a newer stable/LTS is bigger than using these
> > frankenstein kernels you are very much mistaken.
> 
> I really don't think you understand the environment that this work is
> done in.  You may have heard people mention the large amount of out of
> tree code that vendors tend to be sitting on.  That interacts with a
> *very* large chunk of the kernel, and of course there's also a bunch of
> performance stuff that's being looked at beyond pure correctness issues.
> Taking a new upstream requires a bunch of work to update the out of tree
> code to any new kernel APIs and realistically it's going to trash a huge
> chunk of the testing that's been done on the product and require at
> least revalidation.  Taking a targeted update, especially one where the
> riskier changes are configuration options, isn't free either but the
> surface that needs to be looked at is much more known and controlled.
> 
> > In your case it's nice if you could share backports betweek multiple users
> > (just like we try doing for all the stable/LTS trees), but the coverage
> > and
> > testing you're going to get for that isn't anywhere close to what you'll
> > have for a more recent stable kernel that already has those features
> > baked into that.
> 
> If everything were upstream, everyone was working directly upstream and
> everyone had their QA focused on upstream what you're saying would be
> more true but as everyone is so keen to point out that's just not what's
> happening.  There's a bunch of other code in play on the relevant
> systems which makes things that little bit more involved.
> 
> > > > As an alternative, why not use more recent stable kernels and
> > > > customize the
> > > > config specifically for each user to enable on features that that
> > > > specific
> > > > user wants to have.
> > > 
> > > That's just shipping a kernel - I don't think anyone is silly enough to
> > > ship an allmodconfig or similar in production (though I'm sure someone
> > > can come up with an example).
> > 
> > I highly doubt that most shipped kernels actually go through the process
> > of auditing every single config option and figuring out if they actually
> > need it or not (in part because the kernel's config is quite a mess). I
> > really doubt that the kernel is fine-tuned for majority of the released
> > products that run linux.
> 
> I'm sorry but I really don't follow what you're saying here - I'm not
> sure anyone's out of tree code is the result of a failure to understand
> Kconfig and I don't really understand the relevance of a detailed study
> of configuration to the issues around rebasing.
> 
> > > Like I say in this case updating to a newer kernel also means rebasing
> > > the out of tree patch stack and taking a bunch of test risk from that -
> > > in product development for the sorts of products that end up including
> > > the LSK the churn and risk from targeted backports is seen as much safer
> > > than updating to an entire new upstream kernel.
> > 
> > Same as I said before, the risk LSK introduces, IMO, is much greater than
> > rebasing and out-of-tree driver stack.
> 
> I'm afraid you're very much mistaken if you believe that people are only
> working on leaf drivers, or that nothing we do upstream has a meaningful
> impact at the system level.

To provide a real-life example, we recently ran into a scheduler issue in a 
project I'm working on. The device is a phone running a Qualcomm kernel, and 
the scheduler is so hacked by the vendor to cover the phone use cases that 
creating a spinning high priority SCHED_FIFO thread in userspace kills the 
system instantly. That's the kind of crap vendors tend to ship, and moving to 
a newer kernel version pretty much means they have no revalidate all the 
scheduler-related use cases (and add more awful hacks to "fix issues 
introduced in mainline").

-- 
Regards,

Laurent Pinchart
