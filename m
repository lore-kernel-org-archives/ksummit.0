Return-Path: <sudipm.mukherjee@gmail.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id A8C6FBC7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 05:54:53 +0000 (UTC)
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4D965ED
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 11 Jul 2015 05:54:53 +0000 (UTC)
Received: by pdbqm3 with SMTP id qm3so51182127pdb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 10 Jul 2015 22:54:53 -0700 (PDT)
Date: Sat, 11 Jul 2015 11:24:41 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Greg KH <greg@kroah.com>
Message-ID: <20150711055441.GA6316@sudip-PC>
References: <201507080121.41463.PeterHuewe@gmx.de>
	<559C73DF.2030008@roeck-us.net> <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon> <20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda> <20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com> <20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150711001348.GA30675@kroah.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	ksummit-discuss@lists.linuxfoundation.org,
	Jason Cooper <jason@lakedaemon.net>
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

>On Sat, Jul 11, 2015 at 5:43 AM, Greg KH <greg@kroah.com> wrote:
>
> I applaud your attempt here, and don't want to stop you from working on
> it, but I think the real issue is having people actually look for the
> documentation and tools we already have created to do this.  If you make
> yet-another-tool, how are you going to advertise it any better than the
> existing tools/documentation are?
I don't know if i should give my opinion here. I am here for almost one
year and am coming from Eudyptula. I think this thread was regarding
recruitment and high dropout rates.
So from a newbie's point of view, setting up git or mutt was never a
problem. Ok, maybe everyone needs to send his/her first patch two or
three itmes until he gets it right in the formating or commit message
or subject. But sending it using git send-email never had been a problem.
In my opinion the main problem is lack of direction or guidance. As a
newbie I send my first patch, it gets accepted, I have a party to
celebrate and do more style correction and few more patches are accepted.
But by that time I am getting bored with just style correction and want
to do something more.
Now the problem starts. No one is there to guide me and I as a newbie
will not be that much capable enough to find things to do on my own. And
I start loosing the interest. Newbies who are coming from Eudyptula or
starting on their own will face this. But on the otherhand participants
of Outreachy will get a Mentor to guide them and gets a stipend to keep
them motivated. Stipend may not matter to the right candidate who has
interest but having a mentor is the big difference.

Another problem, when a newbie tries to move out of staging to some other
subsystem he likes, the maintainer may not be that much responsive. Just
for example, i submitted a patch on November, 2014 and I am yet to receive
a reply or review to that and the patch was not a style correction patch.

And using git send-email and mutt with gmail is very easy, you do not
need to do any change in gmail. If you want I can give my .gitconfig
and .muttrc for your reference.

regards
sudip
