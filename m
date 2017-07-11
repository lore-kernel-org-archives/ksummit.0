Return-Path: <vrothberg@suse.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B69938D7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Jul 2017 06:42:15 +0000 (UTC)
Received: from prv3-mh.provo.novell.com (prv3-mh.provo.novell.com
	[137.65.250.26])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4FC30AC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 11 Jul 2017 06:42:15 +0000 (UTC)
Date: Tue, 11 Jul 2017 08:21:32 +0200
From: Valentin Rothberg <vrothberg@suse.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20170711062132.GA13470@nebuchadnezzar.suse.de>
References: <20170627135839.GB1886@jagdpanzerIV.localdomain>
	<20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<CA+55aFyPQeMYUafR32parh=jGU0O8prn5vhOhhW+WBU-LbR4HQ@mail.gmail.com>
	<20170707113650.ee6oys5u4vq5hgdi@mwanda>
	<3908561D78D1C84285E8C5FCA982C28F613009A7@ORSMSX114.amr.corp.intel.com>
	<20170710173335.4ksnso6dzaekoxz4@piout.net>
	<CA+55aFzmjA1gkaVwr5J7UoW2Ovgsqr3aJJC_18Wv59QWp94+wA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CA+55aFzmjA1gkaVwr5J7UoW2Ovgsqr3aJJC_18Wv59QWp94+wA@mail.gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] is Kconfig a bit hard sometimes?
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Jul 10 '17 11:28, Linus Torvalds wrote:
> On Mon, Jul 10, 2017 at 10:33 AM, Alexandre Belloni
> <alexandre.belloni@free-electrons.com> wrote:
> >
> > I know the yes trick works for kernels older than 3.7 but maybe people
> > should start using make olddefconfig ;)
> 
> Honestly, I wish more people just ran "oldconfig" and then started
> complaining about people adding insane Kconfig options.

If you want, we could add a "--diff-options" to checkkconfigsymbols.py.
It runs reasonably fast and would also report options outside the
current architecture.

Kind regards,
 Valentin
