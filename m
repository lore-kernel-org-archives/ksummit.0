Return-Path: <corbet@lwn.net>
Date: Fri, 23 Jun 2017 12:39:36 -0600
From: Jonathan Corbet <corbet@lwn.net>
To: ksummit-discuss@lists.linux-foundation.org
Message-ID: <20170623123936.42dab05f@lwn.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 8bit
Subject: [Ksummit-discuss] [MAINTAINERS SUMMIT] Documentation issues
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

The docs pull for 4.13 will include the conversion of the last DocBook
template files, thanks mostly to Mauro.  That's the good news; the bad
news is that I get to explain a lot of merge conflicts to Linus, most of
which result from other trees reaching into Documentation/ and changing
files that have been converted.

I can continue in this mode, but I do wonder if there's a better way out
there somewhere.  So I think there would be value in a session on the
maintenance of "subsystems" that don't fit neatly into the kernel
source-tree hierarchy.

We could also talk about the state of the RST conversion and whether/how
we'd like it to continue.  Perhaps we would rather, as Peter recently
suggested, "just delete all that nonsense and go back to 80 column 7bit
ASCII"?  In general, what do the maintainers want from the documentation
subsystem, and how can we make it easy to continue improving our docs?

jon
