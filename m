Return-Path: <rjw@rjwysocki.net>
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Takashi Iwai <tiwai@suse.de>
Date: Mon, 26 Jun 2017 23:28:36 +0200
Message-ID: <2121039.qAt5UfpHsn@aspire.rjw.lan>
In-Reply-To: <s5hd19rnvcs.wl-tiwai@suse.de>
References: <20170623123936.42dab05f@lwn.net>
	<alpine.LSU.2.20.1706252254190.30709@cbobk.fhfr.pm>
	<s5hd19rnvcs.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Jiri Kosina <jkosina@suse.cz>, ksummit-discuss@lists.linux-foundation.org,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Monday, June 26, 2017 07:58:27 AM Takashi Iwai wrote:
> On Sun, 25 Jun 2017 22:56:07 +0200,
> Jiri Kosina wrote:
> > 
> > On Sat, 24 Jun 2017, Mauro Carvalho Chehab wrote:
> > 
> > > > There are pieces of .txt documentation falling into the "well-knows source of
> > > > information" category, with many references to them all over the Web.
> > > > kernel-parameters.txt is probably the most spectacular example here, but there
> > > > are others.
> > > > 
> > > > Let us not move or rename these, please, or at least put symbolic links in
> > > > place to point to the new locations or similar, such that the existing WWW
> > > > links pointing to the documentation at kernel.org still work going forward.
> > > > 
> > > > And if we have moved or renamed them already, can we possibly make these
> > > > links work again somehow?
> > > 
> > > Agreed. We discussed in the past about two alternatives for those
> > > "well known" documents:
> > > 
> > > 	1) write a small text on the old file pointing to the
> > > 	   new location;
> > > 	2) use symlink.
> > > 
> > > Right now, we're actually mixing (1) and (2). IMHO, we should either
> > > do (1) or (2).
> > 
> > Unfortunately option (3) has also been applied to some of the files:
> > 
> > 	$ ll Documentation/kernel-parameters.txt
> > 	ls: cannot access 'Documentation/kernel-parameters.txt': No such file or directory
> > 
> > I wasn't sure whether this was intentional or not. But if not, I'll 
> > happily send a patch that introduces a symlink.
> 
> If we do symlinks, wouldn't it be cleaner to separate the old doc
> directory from the new doc directory?  That is, Documentation/* keeps
> the old txt or symlinks while the ReST is put in another directory,
> say, docs/* as originally suggested.

That actually sounds like a good idea to me. :-)

Question is if it's not too late to do that now that we have all that stuff
under Documentation/.

Thanks,
Rafael
