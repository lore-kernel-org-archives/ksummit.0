Return-Path: <gregkh@linuxfoundation.org>
Date: Fri, 7 Sep 2018 23:12:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <20180907211209.GA23419@kroah.com>
References: <20180904201620.GC16300@sasha-vm>
	<CAKMK7uFO3xiKxa+mEDgEfDx6ZKY7aFPibD1xuK3z-Ybi0Zr3Sw@mail.gmail.com>
	<20180905101710.73137669@gandalf.local.home>
	<20180907004944.GD16300@sasha-vm>
	<20180906210931.2ea15bd9@vmware.local.home>
	<20180907201224.GD25756@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180907201224.GD25756@kroah.com>
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Bug-introducing patches
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Sep 07, 2018 at 10:12:24PM +0200, Greg KH wrote:
> On Thu, Sep 06, 2018 at 09:09:31PM -0400, Steven Rostedt wrote:
> > On Fri, 7 Sep 2018 00:51:42 +0000
> > Sasha Levin <Alexander.Levin@microsoft.com> wrote:
> > 
> > > Assuming you've read the original mail, it appears that most parties who
> > > participated in the discussion agreed that there's an issue where
> > > patches that go in during (late) -rc cycles seems to be less tested and
> > > are buggier than they should be.
> > > 
> > > Most of that thread discussed possible solutions such as:
> > > 
> > >  - Not taking non-critical patches past -rcX (-rc4 seemed to be a
> > >    popular one).
> > >  - -rc patches must fix something introduced in the current merge
> > >    window. Patches fixing anything older should go in the next merge
> > >    window.
> > 
> > Interesting, because this is exactly what Linus blew up about that made
> > headlines and a loss of a kernel developer 5 years ago:
> > 
> >   https://lore.kernel.org/lkml/1373593870.17876.70.camel@gandalf.local.home/T/#mb7018718ce288b55fe041778721004cd62cd00a1
> 
> And it turns out that today I am feeling the same way again as I said so
> here:
> 	https://lore.kernel.org/lkml/20130711214830.611455274@linuxfoundation.org/
> 
> Looking at the patches in this -rc1 merge window that were marked for
> stable, and some of the dates of them (really old for some subsystems),
> it makes me "wonder" why they were postponed so for -rc1, and didn't go
> into the -final release.

Ok, my mistake, I was looking at stuff that hit between -rc1 and -rc2 as
well as -rc1 patches, so I might be totally wrong here.  It just "feels"
a little odd that some of those patches had such "old" dates on them...

Anyway, no rant from me at the moment :)

greg k-h
