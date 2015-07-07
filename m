Return-Path: <dmitry.torokhov@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 1F8E5B1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:52:28 +0000 (UTC)
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id B138D15E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  7 Jul 2015 22:52:27 +0000 (UTC)
Received: by iecvh10 with SMTP id vh10so144746764iec.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 07 Jul 2015 15:52:27 -0700 (PDT)
Date: Tue, 7 Jul 2015 15:52:23 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20150707225223.GG12491@dtor-ws>
References: <alpine.LNX.2.00.1507071324090.10183@pobox.suse.cz>
	<20150707224025.GJ11162@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150707224025.GJ11162@sirena.org.uk>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] services needed from kernel.org
 infrastructure
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tue, Jul 07, 2015 at 11:40:25PM +0100, Mark Brown wrote:
> On Tue, Jul 07, 2015 at 10:42:49PM +0200, Jiri Kosina wrote:
> 
> > I personally would very welcome a facility that'd send out an e-mail if a 
> > new commit is pushed to a git.kernel.org repo branch (sort of what tip-bot 
> > and akpm's scripts are doing these days) to automatically notify the patch 
> > author that the patch has been merged and pushed out.
> 
> Those are useful, I know Greg has one and I just wrote one too.  I'm not
> sure it needs to be on the server side though, they can also be done
> from the client which lets you try to fine tune things more readily.

If either of you could share the scripts that would be great.

-- 
Dmitry
