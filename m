Return-Path: <rjw@rjwysocki.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4ED3E6C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 Nov 2016 03:40:55 +0000 (UTC)
Received: from cloudserver094114.home.net.pl (cloudserver094114.home.net.pl
	[79.96.170.134])
	by smtp1.linuxfoundation.org (Postfix) with SMTP id 5DA1FAA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  2 Nov 2016 03:40:53 +0000 (UTC)
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Wed, 02 Nov 2016 04:48:06 +0100
Message-ID: <2057225.YvLP48r0ZV@vostro.rjw.lan>
In-Reply-To: <CACxGe6smZrw0STpHjzhSjybgW6bLrMKfyETO+-vuhHRT0yzWRQ@mail.gmail.com>
References: <CAB=NE6Wo-mWdJF8k9yGcsORatpNtiiug+jXdGP60xhd0F+jydg@mail.gmail.com>
	<CAB=NE6VBCC6SEzXTJi=HRSDbsCVXcw-1gwjXdgZzw+UGDn9j0A@mail.gmail.com>
	<CACxGe6smZrw0STpHjzhSjybgW6bLrMKfyETO+-vuhHRT0yzWRQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
Subject: Re: [Ksummit-discuss] Addressing Complex Dependencies - Tuesday
	9:30am - Coronado/Devargas
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday, November 01, 2016 11:56:33 AM Grant Likely wrote:
> For those who want to brainstorm how to teach driver core about probe order
> dependencies, we'll be meeting at 2:00 in "Milagro"
> 
> This will be a working session to try and come up with a design. If we make
> any progress, we can do a readout later in the week for a larger audience
> here at Plumbers.

For everyone interested, the series of "device dependencies tracking" patches
mentioned during the discussion today is available from a git branch at

git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git device-links-test

Thanks,
Rafael


> On Monday, 31 October 2016, Luis R. Rodriguez <mcgrof@kernel.org> wrote:
> 
> > Update:
> >
> > We've reduced the topics that will be covered and time that will be
> > required as follows:
> >
> > The shared topics with the Audio workshop will take place first at
> > 9:30am-10:30am at Sweeney CDE:
> >
> >   * Device hierarchy (just not a tree but a graph)
> >   * Handling cycles on the graph proposals
> >
> > Then we move to Coronado room 10:30am-12:30pm for:
> >
> >   * Functional dependencies (now merged on Greg's tree)
> >   * Resource tracking / allocation framework
> >   * Media controller feature graph
> >   * Linker tables
> >   * Async probe
> >
> >   Luis
