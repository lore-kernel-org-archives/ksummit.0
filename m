Return-Path: <rjw@rjwysocki.net>
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Mauro Carvalho Chehab <mchehab@s-opensource.com>,
	Jiri Kosina <jkosina@suse.cz>
Date: Mon, 26 Jun 2017 23:18:45 +0200
Message-ID: <1603867.tzUgCzNmNQ@aspire.rjw.lan>
In-Reply-To: <20170625222057.51b1341d@vento.lan>
References: <20170623123936.42dab05f@lwn.net>
	<alpine.LSU.2.20.1706252254190.30709@cbobk.fhfr.pm>
	<20170625222057.51b1341d@vento.lan>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: ksummit-discuss@lists.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Sunday, June 25, 2017 10:20:57 PM Mauro Carvalho Chehab wrote:
> Em Sun, 25 Jun 2017 22:56:07 +0200 (CEST)
> Jiri Kosina <jkosina@suse.cz> escreveu:
> 
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
> It was not intentional in the sense of "hiding" where it
> went. The idea is to keep the number of such references "minimum",
> in order to avoid bloating the Documents/ with lots of (1) or (2).
> 
> So, the reason why there's currently no cross reference for it is
> just because nobody decided to put it at the list of "well known"
> docs that would require a cross-reference of type (1) or (2).

Which I'm reading as "please send a patch if you care" frankly. :-)

Thanks,
Rafael
