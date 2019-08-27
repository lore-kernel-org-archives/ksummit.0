Return-Path: <groeck7@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 335571AE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 18:50:31 +0000 (UTC)
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 9EEF789B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 18:50:30 +0000 (UTC)
Received: by mail-pl1-f196.google.com with SMTP id t14so12187566plr.11
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 11:50:30 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
Date: Tue, 27 Aug 2019 11:50:27 -0700
From: Guenter Roeck <linux@roeck-us.net>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190827185027.GA15384@roeck-us.net>
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<CAMuHMdWFh2cK_T3y=iAfEOq=Nv_JpbKKqJ2chi=X40cWLxqBgA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAMuHMdWFh2cK_T3y=iAfEOq=Nv_JpbKKqJ2chi=X40cWLxqBgA@mail.gmail.com>
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Aug 27, 2019 at 07:34:45PM +0200, Geert Uytterhoeven wrote:
> Hi Günter,
> 
> On Tue, Aug 27, 2019 at 4:01 PM Guenter Roeck <linux@roeck-us.net> wrote:
> > On 8/27/19 6:48 AM, Greg Kroah-Hartman wrote:
> > > On Tue, Aug 27, 2019 at 06:24:36AM -0700, Dmitry Vyukov wrote:
> > >> On Mon, Aug 26, 2019 at 11:06 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> > >>> On Mon, 26 Aug 2019, Dmitry Vyukov wrote:
> > >>>> A somewhat related point re UUID/Change-ID.
> > >>>> For syzbot (or any other bug tracking system) we want to associate
> > >>>> bugs with fixes. It turned out there is no good identity of a change
> > >>>> that we could use. Commit hash is an obvious first thing to consider,
> > >>>> but (1) it changes in linux-next, (2) sometimes the change is not
> > >>>> committed yet when we do the association, (3) it is different when
> > >>>> backported to LTS (so not possible to say if a fix is in that stable
> > >>>> tree or not).
> > >>>> We decided to use commit subject, which works to some degree, but also
> > >>>> has problems: (1) not necessary unique, (2) sometimes people change
> > >>>> subject during backporting (e.g. prepend some prefix), (3) has all the
> > >>>> same problems of email clients messing with text (e.g. I can't issue
> > >>>> #syz fix command for loo long commit subjects with my email client).
> > >>>> Some real UUID/Change-ID would solve all of these problems by giving
> > >>>> us capability to refer to changes rather than a commit in a particular
> > >>>> tree only.
> > >>>
> > >>> If we adopt the Link: ..../$MSG tag widely then you have a UUID.
> > >>
> > >> Is there a way to ensure that everybody will generate right IDs
> > >> (ChangeID-Version) and then a link in canonical form will be included
> > >> into commit? As far as I understand this is not possible with the
> > >> current kernel tooling, as this aspect is not under control of any
> > >> unified tooling.
> > >> I see different maintainers use links to different archive web sites.
> > >> Also sometimes Link is present for other reasons (e.g. link to bug
> > >> report).
> > >> The link will need to be added by every developer (rather than
> > >> maintainer) so that it's available before the change is committed
> > >> anywhere.
> > >
> > > For subsystems I maintain, I am already adding the Link: tag to
> > > lore.kernel.org with the message id in it.  That is automatically added
> > > by my scripts.
> > >
> > >> Though, most of these are problems for any other change identification scheme...
> > >
> > > Note, we have 4000+ developers every year, it's hard enough to get them
> > > all to agree on major things, let alone crazy stuff like this :)
> > >
> >
> > Is it really that crazy ?
> >
> > I have to use a combination of subject analysis and patch content analysis
> > using fuzzy text / string comparison, combined with an analysis of the patch
> > description, to answer a simple question: Is this patch upstream, and what is
> > its upstream SHA ? Having a UUID tag would make this a simple and
> 
> I typically use "git cherry -v" to check if a patch is upstream.
> Yes, this may miss a patch that was changed.  But that can be a good thing.
> 

I use that as well, as "first line of defense". But it doesn't always work,
for example if a patch was applied to a downstream branch while its 
upstream review was still going on, or for backports which required
conflict resolutions or context changes.

> > straightforward operation. What is crazy is having to do all this analysis.
> 
> What happens to the UUID when a patch is split in two parts?
> If a part is applied with the same UUID, that would give the false impression
> that the original full patch was applied.
> 

Presumably one would/should drop the original UUID in such a situation.
One should also not blindly trust a uuid and also perform an automated
and/or manual review. The key would be to have the ability to identify
a patch without having to search through all of them.

In practice, I use a fuzzy match on the patch subject today, followed
by another fuzzy match on the patch content. Both are expensive, even
with parallel search, especially if one has to search through 100k+
patches. The subject match is also error prone - a computer has a
diffferent opinion about "match" than the human brain, and a seemingly
innocent subject change may result in a complete mismatch. Also, yes,
there may be multiple patches with the same or almost the same subject.
The ability to replace or at least augment that part of the search
with a uuid match would be extremely helpful.

> At least rebasing (using git rebase) your submissions against upstream will
> keep the part that still hasn't been applied.
> 

Unfortunately, a straight rebase doesn't work for a number of reasons.
In a nutshell we have too many local patches to deal with, in too many
areas of the kernel. Also, the deviation from upstream is in almost all
cases not what we want or need if a downstream patch differs from its
upstream version. We have to use a more intelligent (guided) approach.

Guenter
