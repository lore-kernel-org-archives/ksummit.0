Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 904148EB
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:29:50 +0000 (UTC)
Received: from galahad.ideasonboard.com (galahad.ideasonboard.com
	[185.26.127.97])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 232C01AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue,  4 Aug 2015 14:29:50 +0000 (UTC)
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 04 Aug 2015 17:30:35 +0300
Message-ID: <7864111.KEAoCeCYyN@avalon>
In-Reply-To: <CAMuHMdUK2_7+Y9+ffpJKTy8LcwogFcg+XAGrif0YcTT4C4u-wQ@mail.gmail.com>
References: <20150801164142.653012af@lwn.net> <20150804135044.GB5180@mwanda>
	<CAMuHMdUK2_7+Y9+ffpJKTy8LcwogFcg+XAGrif0YcTT4C4u-wQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Documentation
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Tuesday 04 August 2015 16:05:16 Geert Uytterhoeven wrote:
> On Tue, Aug 4, 2015 at 3:50 PM, Dan Carpenter wrote:
> > I have all the tools to read it.  I remember this because it requires
> > 700MB of dependencies.  I was downloading it to read the kdbus
> > documentation.  I remember this.  I don't think I read the kdbus
> > documentation in the end.  I certainly don't know, without googling, how
> > to use build the docbook output.
> 
> I gave up trying to build the docbook docs many years ago.
> 
> Cross-compiling kernels for niche architectures is peanuts compared to
> generating docbook output ;-(

That's interesting, I haven't had trouble compiling the DocBook documentation 
to HTML for several years now (I do it every time I have to patch the V4L2 or 
DRM documentation). Compiling to PDF is another story though.

-- 
Regards,

Laurent Pinchart
