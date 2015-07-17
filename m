Return-Path: <linux@roeck-us.net>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B62D2413
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:19:42 +0000 (UTC)
Received: from bh-25.webhostbox.net (bh-25.webhostbox.net [208.91.199.152])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EE466110
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 17 Jul 2015 16:19:41 +0000 (UTC)
Message-ID: <55A92B0F.5000305@roeck-us.net>
Date: Fri, 17 Jul 2015 09:19:27 -0700
From: Guenter Roeck <linux@roeck-us.net>
MIME-Version: 1.0
To: Olof Johansson <olof@lixom.net>, Jonathan Corbet <corbet@lwn.net>
References: <20150708114011.3a1f1861@noble>
	<2879113.fraeuJIr2M@avalon>	<20150709193718.GD9169@vmdeb7>
	<20150710143641.GW4341@mwanda>	<20150710160714.GL111846@vmdeb7>
	<20150710222351.GA28632@kroah.com>	<20150711000034.GU111846@vmdeb7>
	<20150711001348.GA30675@kroah.com>	<20150711055441.GA6316@sudip-PC>	<20150715212043.775be5d2@gandalf.local.home>	<20150716132551.GH4039@sirena.org.uk>	<20150716094720.2bf9f5ac@gandalf.local.home>	<55A7C7FE.6000604@sonymobile.com>
	<20150716094125.16cdda73@lwn.net>
	<CAOesGMiTinjYP=L7E=xALYPsP=k=1CV9+Tsbtg0G2sM2awJHyQ@mail.gmail.com>
In-Reply-To: <CAOesGMiTinjYP=L7E=xALYPsP=k=1CV9+Tsbtg0G2sM2awJHyQ@mail.gmail.com>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	"ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
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

On 07/16/2015 08:57 AM, Olof Johansson wrote:
> On Thu, Jul 16, 2015 at 8:41 AM, Jonathan Corbet <corbet@lwn.net> wrote:
>> On Thu, 16 Jul 2015 08:04:30 -0700
>> Tim Bird <tim.bird@sonymobile.com> wrote:
>>
>>> On 07/16/2015 06:47 AM, Steven Rostedt wrote:
>>>> One of the issues with newcomers coming to development of the Linux
>>>> kernel, is that every maintainer is different. We should be trying
>>>> harder to let people know what we prefer. Every maintainer expects
>>>> something different, but it's up to the maintainer to explicitly let
>>>> others know what they want. You can't expect everyone to read your mind.
>>>
>>> I agree with this completely.  When you switch systems (which I've done
>>> something like 5 times in the last 2 years), you are essentially a newbie
>>> in that new system.
>>>
>>> How about putting some notes in the MAINTAINER file for things like
>>> this, that some get_maintainer.pl option could show?
>>> We could use a I: prefix, for "Instructions:"  (only because 'N:'
>>> is already used.)
>>
>> So somebody has to play the devil's advocate and ask this question...
>> Are we really better off documenting the fact that what looks like a
>> single project is actually a collection of a hundred or so idiosyncratic
>> fiefdoms with their own contact protocols, coding styles, beer
>> preferences, and more? Or perhaps we might think about gravitating toward
>> a more uniform set of conventions?  Preferably the ones I use? :)
>>
>> Seriously, this area is a minefield for new developers; it can be
>> discouraging to put together your first patch, carefully follow
>> everything found in SubmittingPatches, CodingStyle, SubmitChecklist, and
>> HOWTO, appease the checkpatch.pl beast, carefully run get_maintainer.pl
>> with the correct command-line options, and follow all the suggestions
>> provided by reddit, Phoronix and 4chan, only to be told that the patch
>> came in during the wrong phase of the moon and they really should have
>> known better.
>>
>> Not sure what the real answer is, but something tells me that adding a
>> new domain-specific language to MAINTAINERS isn't quite it :)
>
> Hmm. How about something such as an initial (friendly) gatekeeper that
> fronts the submissions and helps steer them in the right direction and
> in the right format (with follow-up) for those who are unsure?
>
> I'm not sure it'll be possible to achieve at the scale it's needed,
> but it could be worth a try. Or, just as with some other suggestions,
> maybe it has already been tried and didn't go anywhere.
>
That only works is a newbie only submits patches into a single subsystem.
Anyone (including 'oldtimers') submitting a patch into different
subsystems will still hit the minefield, or would have to utilize the
gatekeeper again.

Overall, I don't think this would scale if the gatekeeper is a human.
Besides, that gatekeeper would have to be a genius to remember the
different per-subsystem submit procedures.

Guenter
