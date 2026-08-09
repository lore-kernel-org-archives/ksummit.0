Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 513CE375ADF
	for <ksummit@lists.linux.dev>; Sun,  9 Aug 2026 18:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786300960; cv=none; b=cav68jLbEmEzo+36nqW0N8oePPIMeqeRVwckkigCIv8S+dsMjE25+DiPFC8F6UuU3bDM7wkZn5SsRIkZfjHyBMUYrEUum1F9WzHVMIBu5qWo9E4EVy0d/5XgPSRUh7nnbhjSJk4r6VmxLsR9cnUHpZxRfUWAH250wFU3sjzO8fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786300960; c=relaxed/simple;
	bh=I27ZovcLz9PttpEZF6v6vG8qvKHKBCMQOCZSukyzVnA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tb5tfj+P8jcxLWAt4DGdKaqJq6d9j1orKrjAmdU+UcGL9h7uThj03eezRcYPi8dtE6MPRQDd9oeIgpiTWHTQlCZvYF1PCJZQ+ftomOYUIYEHkc2Qz5kZnDn6tctesmcvusmwDKMdZqSv+yrjDe9+bfE46JsDJ06NzM5ghurz9J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWBIL+CG; arc=none smtp.client-ip=100.103.45.18
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWBIL+CG"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D93181F000E9;
	Sun,  9 Aug 2026 18:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786300958;
	bh=sJKlvgZ8fUW+o7KAdNygGyDT/BvDIyfM7dVOEr1X9AE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VWBIL+CG8jjG7P6AghoAJRN9kNXuzSuLKQE8OFgpe2I41+OhUs/9gv6loNcCgpUzk
	 F+kIoP677gEnM1SkZMS0QuZ8EyCnrTGHtQJyNXr1QGDdrKfFxJcTueVeK9xHW9mT+s
	 m6ZDCgtjEw5ikj6LP55H3qyua/A7DAwIvL0MJqOaR0UzxJPkXe6+uWWRpUF0YAziC/
	 Tx72RZpRXmsjlM5VL88E0hGcP4f0l7PYdpcEVQ6076WCjwDEFwQ7e6VnlM1qWxAx/A
	 jnrFQOFI3nrQDjFpwkcWFRoGacRw623d8eFwV8y5cfB4tI3BpXmt19B5vQQ4RJ29jr
	 s0JcHodPBXQig==
Date: Sun, 9 Aug 2026 19:42:21 +0100
From: "Lorenzo Stoakes (ARM)" <ljs@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Steven Rostedt <rostedt@goodmis.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, ksummit@lists.linux.dev, Theodore Tso <tytso@mit.edu>, 
	Jiri Kosina <jkosina@suse.com>, Sasha Levin <sashal@kernel.org>
Subject: Re: [MAINTAINERS SUMMIT] Time to call it quits for the maintainer
 summit?
Message-ID: <anjJiuyYisxP79mk@lucifer>
References: <8ae41b73983eee6ba716a61b8701df6522a02baa.camel@HansenPartnership.com>
 <20260806194153.6443a3ba@gandalf.local.home>
 <CAHk-=wi734UD_CKkmRwZJHnNXAPTzYASXFh_XR092BsgWs8Qng@mail.gmail.com>
 <anii3u-87kSrB9K3@lucifer>
Precedence: bulk
X-Mailing-List: ksummit@lists.linux.dev
List-Id: <ksummit.lists.linux.dev>
List-Subscribe: <mailto:ksummit+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ksummit+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <anii3u-87kSrB9K3@lucifer>

+cc Ted, Sasha, Jiri

(Sorry, hit send before adding cc's...!)

On Sun, Aug 09, 2026 at 07:39:43PM +0100, Lorenzo Stoakes (ARM) wrote:
> On Fri, Aug 07, 2026 at 10:27:27AM -0700, Linus Torvalds wrote:
> > The maintainer summit being a pretty constant "in-group" is
> > fundamental, but it still feels a bit sad and wrong to me.
>
> It feels less like a naturally emerging in-group and more like a clique,
> and I've heard the same view expressed to me by a good few other
> maintainers.
>
> Its exclusivity is pretty well signalled ([0]):
>
> 	"The Linux Kernel Maintainer Summit brings together the world’s
> 	leading core kernel developers to discuss the state of the existing
> 	kernel and plan the next development cycle. This is an invite-only
> 	event."
>
> The procedure for selecting attendees is rather vague ([1]):
>
> 	"Linus has generated a list of people for the program committee to
> 	consider. People who suggest topics that should be discussed at the
> 	Maintainers Summit will also be added to the list for
> 	consideration. ... Late submissions will be considered, but people
> 	submit submissions before September 10th will be considered for
> 	receiving an invite."
>
> Though seemed to change (maybe?) for 2026 ([2]):
>
> 	"The attendees are jointly selected by Linus Torvlads (who has
> 	provided us with a roughly a dozen maintainers that he would like
> 	to attend), and the program committee, who choose from maintainers
> 	and developers who have been the most active in the past year.
> 	... Anybody proposing a topic before July 24th will be added to the
> 	list of potential attendees selected by the program committee ... "
>
> All of this seems to tie topic submission with attendance.
>
> It's a little unclear too whether somebody submitting a topic is also
> proposing to present it at the session or not. It's somewhat implied but it
> doesn't seem to be the case in practice.
>
> For instance, I made a submission last year (I was nagged to by somebody :)
> but I had no expectation of being invited as I did not (nor do not)
> consider myself anywhere near elite or established enough to fulfil the
> criteria above.
>
> I was however slightly disappointed that a session was run on essentially
> the same topic I submitted and whose summary ([3], read out at the start)
> was posted in the same thread.
>
> The session was run by Sasha who hadn't submitted a topic that year (Jiri
> had also made a submission related to LLMs but more specifically about
> kernel patch attribution, though he did attend).
>
> That experience overall made it seem very vague as to how topic selection,
> who runs the session and attendance actually works.
>
> So at the very least some clarity is needed.
>
> Ted's data from elsewhere in this thread is also rather misleading I feel:
>
>   # Summits
>   Attended   #      %
>   ------------------------
>   4          9    18.37%
>   3          8    16.33%
>   2         10    20.41%
>   1         22    44.90%
>
> It's dealing in people but not seats - i.e. actual conference attendances.
>
> Consider:
>
>   # Summits
>   Attended   #      %
>   ------------------------
>   4         27    55.10%
>   1         22    44.90%
>
> It'd _still_ suggest that there was a healthy 44.9% of new faces, even
> though this would mean that 83% of every conference was the exact same
> people :)
>
> What's missing is factoring in the # summits attended.
>
> So by Ted's data there were 102 seats over the 4 years (9 * 4 + 8 * 3 + 10
> * 2 + 22 * 1).
>
> Taking that into account the numbers look very different:
>
>   # Summits
>   Attended   #    Seats occupied   %    Cuml %
>   --------------------------------------------
>   4          9          36       35.3     35.3
>   3          8          24       23.5     58.8
>   2         10          20       19.6     78.4
>   1         22          22       21.6    100.0
>
> That puts the number of seats filled by one-time attendees at any
> conference at 21.6%, not 44.9%.
>
> It means that 78.4% of the seats at any given summit on average are filled
> by repeat attendees, with 58.8% on average filled by people who attended 3
> or 4 conferences.
>
> Which entirely backs up that it is a clique - the same majority in every
> room.
>
> Also, the committee who select attendees (through unclear criteria) are
> themselves drawn from that same core of repeat attendees.
>
> I mean I don't know, maybe it's necessary to run it as a tight ship of
> trusted people, but I think we should at least be more clear about that.
>
> However I wonder whether we should look at an alternative approach like
> those with M: entries in MAINTAINERS voting on topics, or something
> similar.
>
> Not sure if that's a good or terrible idea but it's something :)
>
> --
> Cheers, Lorenzo
>
> [0]:https://events.linuxfoundation.org/linux-kernel-maintainer-summit/
> [1]:https://lore.kernel.org/all/20250805144357.GA762104@mit.edu/
> [2]:https://lore.kernel.org/all/alW3eJ9x6iJ8Juhi@mit.edu/
> [3]:https://lore.kernel.org/all/aTYmE53i3FJ_lJH2@laps/

--
Cheers, Lorenzo
