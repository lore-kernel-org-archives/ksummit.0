Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 8DD8941C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:10:37 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 00AC4150
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:10:36 +0000 (UTC)
Message-ID: <55A928F1.8080704@roeck-us.net>
Date: Fri, 17 Jul 2015 09:10:25 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Mark Brown <broonie@kernel.org>, Steven Rostedt <rostedt@goodmis.org>
References: <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon>	<20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda>	<20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com>	<20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com>	<20150711055441.GA6316@sudip-PC>	<20150715212043.775be5d2@gandalf.local.home>
	<20150716132551.GH4039@sirena.org.uk>
In-Reply-To: <20150716132551.GH4039@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Dan Carpenter <dan.carpenter@oracle.com>,
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

On 07/16/2015 06:25 AM, Mark Brown wrote:
> On Wed, Jul 15, 2015 at 09:20:43PM -0400, Steven Rostedt wrote:
>> Sudip Mukherjee <sudipm.mukherjee@gmail.com> wrote:
>
>>> Another problem, when a newbie tries to move out of staging to some other
>>> subsystem he likes, the maintainer may not be that much responsive. Just
>>> for example, i submitted a patch on November, 2014 and I am yet to receive
>>> a reply or review to that and the patch was not a style correction patch.
>
>> BTW, it should always be OK to ping the maintainer if they ignore a
>> patch. I believe one week is a good time to wait. And again in another
>> week if they still do not reply. I know a few maintainers that think if
>> they get to a patch that is old and the author never pinged them, they
>> think the author doesn't think that patch is too important and they
>> just delete it.
>
> Please don't encourage people to send content free pings bit instead
> resend it - a content free ping mostly just adds to mail volume which is
> pretty much the original problem.  If the patch has actually been lost
> then a resend is going to be needed anyway and if not then it's mostly
> just adding to mail volume.  With a lot of mail clients (including mutt
> which I use) the nag will get threaded in with the original patch buried
> back in the mailbox and not even be seen if that's still sitting waiting
> for handling.
>

I tried both (ping and resend). In either case the response depends on the
maintainer. Some will accept either, some will say you should have res-sent
the patch if you sent a ping, some will tell you that you should have
pinged if you re-sent it. Depending on the maintainer the response can be
pretty strong.

It would be great to have a single well defined and documented mechanism
to avoid the "whatever you do is wrong" response.

Guenter
