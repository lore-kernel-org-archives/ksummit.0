Return-Path: <PeterHuewe@gmx.de>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9D3DDB1B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 21:25:47 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id CA213EE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 12 Jul 2015 21:25:46 +0000 (UTC)
From: Peter =?iso-8859-1?q?H=FCwe?= <PeterHuewe@gmx.de>
To: ksummit-discuss@lists.linuxfoundation.org
Date: Sun, 12 Jul 2015 23:27:08 +0200
References: <559C73DF.2030008@roeck-us.net> <20150711023946.GV111846@vmdeb7>
	<20150711150437.GA6666@kroah.com>
In-Reply-To: <20150711150437.GA6666@kroah.com>
MIME-Version: 1.0
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
Message-Id: <201507122327.09304.PeterHuewe@gmx.de>
Cc: Jason Cooper <jason@lakedaemon.net>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Ksummit-discuss] [CORE TOPIC] Recruitment (Reviewers, Testers,
	Maintainers, Hobbyists)
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

Am Samstag, 11. Juli 2015, 17:04:37 schrieb Greg KH:
> On Fri, Jul 10, 2015 at 07:39:46PM -0700, Darren Hart wrote:
> > OK, all good points. It looks as though I can step up my own tooling some
> > to make the email-to-compilation step faster so I don't spend as much
> > time on patches with compiler warnings, that don't apply, etc. Dan C.
> > said something similar.
> 
> I think I mentioned it before, but Wolfram has a set of scripts that
> does this really well.  I don't know if they are published anywhere, but
> that would be a good place to start with.  I think Sara Sharp also had a
> bunch that she used to make life easier, you might want to ask her the
> next time you see her in the office.


They are called ninja-check and published here
https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2014-May/000554.html

Ksummit Thread about all these tools can be found here:
ftp://kernel.mirrors.pair.com/pub/linux/kernel/people/paulmck/LKS/LKS2014Topic/000291.html


Thanks,
Peter
