Return-Path: <Tim.Bird@am.sony.com>
From: "Bird, Timothy" <Tim.Bird@am.sony.com>
To: Greg KH <gregkh@linuxfoundation.org>, Josh Boyer
	<jwboyer@fedoraproject.org>
Date: Tue, 13 Sep 2016 16:23:18 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF0AB84C55@USCULXMSG01.am.sony.com>
References: <20160902134711.movdpffcdcsx6kzv@thunk.org>
	<EA994DF73240CA4588A99BF072DB2840021207D3@BPXM12GP.gisp.nec.co.jp>
	<20160910120055.gr2cvad7efwci4f2@thunk.org>
	<20160912162714.GC27946@sirena.org.uk>	<20160912171450.GB27349@kroah.com>
	<20160912234548.GL27946@sirena.org.uk>	<20160913061931.GC11047@kroah.com>
	<20160913103814.GQ27946@sirena.org.uk>	<20160913120942.GA18307@kroah.com>
	<CA+5PVA62NMb5dziRohcSPat5mU-yGzNrDuUFhTYr8Qip306VAg@mail.gmail.com>
	<20160913131249.GA8470@kroah.com>
In-Reply-To: <20160913131249.GA8470@kroah.com>
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
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



> -----Original Message-----
> From: ksummit-discuss-bounces@lists.linuxfoundation.org [mailto:ksummit-
> discuss-bounces@lists.linuxfoundation.org] On Behalf Of Greg KH
> Sent: Tuesday, September 13, 2016 6:13 AM
> To: Josh Boyer <jwboyer@fedoraproject.org>
> Cc: Tsugikazu Shibata <tshibata@ab.jp.nec.com>; ltsi-
> dev@lists.linuxfoundation.org; ksummit-discuss@lists.linuxfoundation.org
> Subject: Re: [Ksummit-discuss] [LTSI-dev] [Stable kernel] feature backpor=
ting
> collaboration
>=20
> On Tue, Sep 13, 2016 at 08:20:59AM -0400, Josh Boyer wrote:
> > On Tue, Sep 13, 2016 at 8:09 AM, Greg KH <gregkh@linuxfoundation.org>
> wrote:
> > > On Tue, Sep 13, 2016 at 11:38:14AM +0100, Mark Brown wrote:
> > >> On Tue, Sep 13, 2016 at 08:19:31AM +0200, Greg KH wrote:
> > >> > what the next kernel will be.  I work with them to show that it do=
esn't
> > >> > really matter _what_ kernel is picked, if their code is merged ups=
tream,
> > >> > or ready to be merged, the specific kernel number doesn't matter.
> > >>
> > >> In the cases I'm aware of it's more about knowing when the kernel wi=
ll
> > >> appear so people can commit to integration activities than the versi=
on
> > >> number itself - I've never really heard "I need version X", it's alw=
ays
> > >> been "when will we know which version Greg has chosen?".
> > >
> > > Yes, I hear that a lot, so you need to follow up with, "why does it
> > > matter what version Greg picks?", and then their response to me alway=
s
> > > is, "so we know what kernel to start to rebase our huge patchsets to
> > > earlier", which again, is the thing we want to keep them from doing!
> > >
> > > I got a few emails when I stopped 3.14.y this week along the lines of=
,
> > > "oops, we were using that kernel, what are we supposed to do now!"  E=
ach
> > > time I asked if 4.4 or 4.8 worked for them.  And each time I got back=
 a
> > > response a day later along the lines of, "oh wow, yes, it does, we'll
> > > use that."
> > >
> > > I have half-a-mind to just skip a LTS kernel for a whole year and see=
 if
> > > anyone even notices, I feel it is being used for all the wrong
> > > reasons...
> >
> > What are the right reasons?  I've always found the LTS kernels to be a
> > weird thing.  They don't serve the same purpose the normal stable
> > kernels do for users (fixes after initial release, before the next
> > release).  They don't serve the same purpose as a vendor kernel
> > (hardened, stable, tuned, supported).  Developers tend to abuse them
> > as you've descried.  So I guess I've forgotten the original intention
> > of the LTS kernels to begin with.  Could you remind me (us)?

I can give my perspective.  The CE Workgroup in the Linux Foundation
has been trying to reduce fragmentation in the embedded space for many
years.  (You can argue about how successful we've been :-)

One thing that plagued the embedded industry (particularly product vendors,
like Sony), was receiving vendor kernels on a number of different kernel
versions, for all the different vendors we worked with.  We had
patches out of tree (some things were external,
like LTTng, or the Linux-tiny patch set), and some things were internal
(like 4k stacks, or our own crash handling/debugging code).  Integrating
this into multiple kernel versions was a huge pain.  You might ask,
"why not just send these upstream".  Well, for some of these there were
multi-year efforts to do so, resulting in failure (or only partial success)=
.=20
Others, we were told pretty quickly would never be accepted upstream.
But we still wanted them in our kernels.  So we resigned ourselves to
managing these out-of-tree, indefinitely.

And then you have the backported features issue that's been discussed
on this thread.  As long as SoC vendors are shipping old kernels, product
companies are going to want some amount of backported features.

LTS is a way to get vendors synced up so we see less variation at the=20
product-company level in the kernel versions we see, which is actually
a big help.  It's taken us years to educate the vendors that they should be
using the same kernel version as everyone else (within a particular timefra=
me),
so it would be a step backwards if LTS went away.

Now, from a community standpoint, I don't think any of this is very visible=
.
In the Android space, whatever Google picks becomes the rallying point
for a particular generation of phones.  But Google is constrained by what
they can reasonably get agreement on from their partners (e.g. Samsung,
MediaTek and of course Qualcomm).  And the patch mountains that each
of those companies has ends up being an hurdle to moving to more recent
kernel versions.  (It's a bit of a vicious cycle, that honestly is very dif=
ficult to
break.)  But ultimately, I think it's helpful for everyone involved
that one kernel version gets chosen.  And like others, I don't believe it r=
eally
matters which one.

LTS lets us rally non-Android and Android-based products around consistent
kernel versions.

Maybe this does lessen the pain of maintaining out-of-tree patches, which
means there's less incentive to upstream stuff, but there's
a certain amount of patches where embedded people have been told to
just  manage them out of tree.
 -- Tim
