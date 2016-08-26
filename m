Return-Path: <jra@samba.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 0C2A471
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 22:42:22 +0000 (UTC)
Received: from hr2.samba.org (hr2.samba.org [144.76.82.148])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 26CF713B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 26 Aug 2016 22:42:20 +0000 (UTC)
Date: Fri, 26 Aug 2016 15:42:13 -0700
From: Jeremy Allison <jra@samba.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20160826224213.GA1181@jra3>
Reply-To: Jeremy Allison <jra@samba.org>
References: <20160826193331.GA29084@jra3>
	<CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CA+55aFyvFJ0gz++ApyO7gFGd0wz4ysjs=6wNZi-91VUJuVK2_w@mail.gmail.com>
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [CORE TOPIC] GPL defense issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Aug 26, 2016 at 02:51:16PM -0700, Linus Torvalds wrote:
> On Fri, Aug 26, 2016 at 12:33 PM, Jeremy Allison <jra@samba.org> wrote:
> >
> > These days we rely on Conservancy doing the kind of back-room negotiation
> > that they are really good at, and they've never failed us on this. Lawsuits
> > *are* a last-ditch nuclear option.
> 
> Jeremy, I trust *you*.
> 
> But I do not trust Bradley, for example.

Thanks. I'm in the happy position of trusting both you *and*
Bradley. But I know you don't know him as well as I do.

> Bradley talks the talk here when called out on it, but elsewhere he
> clearly sees enforcement not as just a last ditch nuclear option. I've
> heard that complaint from people in private conversations, but you can
> find it in public posts too.
> 
> For example, we had a really nasty issue with Patrick McHardy, and
> sadly, the companies involved apparently didn't dare talk about it for
> fear of bad press (even if the badness was from our side). I was
> actually informed by Karen that the SFC finally made the thing public
> (thanks Karen - I really appreciated that), but when I went looking
> for it I find Bradley Kuhn making comments like these:
>...

Linus, I hope you of all people realize what can happen when you take people's
email quotes out of context. You end up with things like this:

http://www.theregister.co.uk/2016/08/26/linus_torvalds_calls_own_lawyers_nasty_festering_disease/

Which isn't a nuanced look at the discussion we are having here :-).

You have to remember you get to talk to the engineers about GPL
violations, who sheepishly look at their shoes and say, "yeah,
I'm talking to management about fixing that." That's the approach
I take too when talking about GPL violations. But if that doesn't
work (and there are some companies for which it really doesn't),
then you have to talk to management.

Bradley has to have that talk with the management instead. That can give
a completely different perception of what is going on ("fsck you,
we're never giving you that code" :-). Remember, Conservancy are
the people we call in when we're not getting anywhere through the
unofficial channels.

I've (very) occasionally been on one of those calls. They're
not pleasant.

The other thing to remember is Bradley isn't the one making the
decisions here. It's the developers - *ALWAYS* the developers.
Bradley and the Conservancy staff can give advice, but they do
not do *anything* without a direct mandate from the copyright
holders.

Conservancy acts when developers ask them to. It isn't accurate
to think of Bradley or Conservancy as a rogue actor running around
doing their own thing. They're more like the union rep who does
the tough negotiations with the employer. No one likes the union
rep. (or maybe I've lived in the USA too long :-).

> Look, guys. This is Bradley EXPLICITLY talking about using the courts
> as a way to "clarify" issues.
> 
> So _excuse_ me for not finding Bradley Kuhn very trustworthy on this
> issue. He's on public record on doing exactly that I am arguing we
> should *NOT* be doing.
> 
> Lawsuits aren't about "clarification". They aren't something we should
> hope for in order to "proceed with more certainty".

Corparate lawyers talk like that ("clarification"). It's the language
they understand. No one files lawsuits for "clarification", if they
do (and there have been amazingly few open source lawsuits compared
to the litigous hell that is proprietary software) they're either a
bad actor doing it for money (not mentioning names here) or they're
trying to get compliance (Conservancy).

> Please, see above. If you're on the Conservancy board of directors,
> maybe you should clarify with Bradley, who is listed as _president_ of
> the board, what that mission actually is?
> 
> Because right now, I'm getting some _very_ mixed messages.

I think the best message Conservancy has made on GPL compliance is here:

https://sfconservancy.org/copyleft-compliance/principles.html

and I *know* everyone there is on board with that ! As for
the general mission - more Free Software for all ! :-).

https://sfconservancy.org/about/

"Software Freedom Conservancy helps promote, improve, develop,
and defend Free, Libre, and Open Source Software (FLOSS) projects.
Conservancy provides a non-profit home and infrastructure for FLOSS
projects. This allows FLOSS developers to focus on what they do best
— writing and improving FLOSS for the general public — while
Conservancy takes care of the projects' needs that do not relate
directly to software development and documentation."

I think we all want the same thing. To mess with the code :-).
