Return-Path: <gregkh@linuxfoundation.org>
Date: Tue, 11 Sep 2018 17:02:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20180911150215.GB23019@kroah.com>
References: <20180911011056.GA6958@localhost.localdomain>
	<CAFbkSA2spzRzya=ftfTxK3Wca=wnNwg7x2o+rM5s8s201=R3Rw@mail.gmail.com>
	<s5hr2i0z1j9.wl-tiwai@suse.de> <20180911142134.GB19866@kroah.com>
	<20180911144523.GB5257@mtr-leonro.mtl.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180911144523.GB5257@mtr-leonro.mtl.com>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Justin Forbes <jforbes@redhat.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] CVE patches annotation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Sep 11, 2018 at 05:45:23PM +0300, Leon Romanovsky wrote:
> On Tue, Sep 11, 2018 at 04:21:34PM +0200, Greg KH wrote:
> > On Tue, Sep 11, 2018 at 02:00:58PM +0200, Takashi Iwai wrote:
> > > On Tue, 11 Sep 2018 13:57:09 +0200,
> > > Justin Forbes wrote:
> > > >
> > > > On Mon, Sep 10, 2018 at 8:11 PM, Eduardo Valentin <edubezval@gmail.com> wrote:
> > > > > Hello,
> > > > >
> > > > > I would like to open a discussion on improving the annotation
> > > > > around CVE patches on the Linux kernel. Today, the kernel Documentation
> > > > > mentions about CVE assignment and asks as a good practice to at least
> > > > > mention the CVE  number in the patch [1]. But, is that enough?
> > > > > Should the kernel have more info about what patches fixes a specific
> > > > > CVE?
> > > > >
> > > > > Some of the challenges with current process:
> > > > > - The info about of about what CVEs have been patched in a kernel is
> > > > >   outside the kernel tree / git history.
> > > > > - Today, some patches have the CVE info, and many others do not mention
> > > > >   anything about CVE number.
> > > > > - As mentioned in the kernel documentation [1], not always the CVE
> > > > >   number is assigned when the patch(es) go into the kernel tree, so
> > > > >   maybe this may require some post merge annotation?
> > > >
> > > > This is also sometimes relevant when you can fix and embargoed CVE
> > > > before embargo lifts because the actual fix doesn't make it obvious
> > > > that there is a security issue. Obfuscation is a somewhat useful tool
> > > > when fixing security bugs sometimes.  I would rather get the patches
> > > > in sooner than have them be properly annotated for the security fixes
> > > > they really are.
> > >
> > > I hoped that git-notes could be used for such additional post-release
> > > notes.  But it seems that it never flies well due to various
> > > reasons...
> >
> > I do remember a tree somewhere on github that had a tracking between
> > cves and kernel commits.  It was a pain to keep up to date, but the
> > author was doing a good job for a number of months.
> >
> > Can't find it now...
> >
> > Anyway, the main problem here is that almost all the time, CVEs are
> > assigned _after_ the patch is in the kernel tree.  And we can't go back
> > in time to change a changelog entry.
> 
> Greg,
> 
> There is another huge problem - legal complications vs. desire to
> upstream fix as fast as possible.
> 
> Most probably all HW vendors are tied with legal contracts to provide to
> their customers fix to security breach in advance, before making it
> publicly available.
> 
> It means that putting CVE in changelogs will require from such HW
> vendors to delay ALL CVE patches, while current legal situation allows
> them to fix without too much noise and inform all relevant parties in
> parallel.

Yet another good reason why we will never require this :)

thanks for bringing it up,

greg k-h
