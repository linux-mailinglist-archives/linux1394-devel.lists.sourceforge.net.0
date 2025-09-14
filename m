Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4C9B567D9
	for <lists+linux1394-devel@lfdr.de>; Sun, 14 Sep 2025 13:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OAhtfiVOM3E5OTXQ/orX2aziJVgnHld2y8ayk1/ejsE=; b=eROPdexRAzQhUoWqXM9kyjPqnN
	0TK2phuehtpQDnuHqHEm5HMv7beuE776tWoLDyNIcu1qcX9fTmZECy+uIzcHBv5jyxO309K/YCg15
	jsHxaq/+rdTxGGv4uCK1nXQueZciwIqa7UsHzlDPL6AcWvlg/4yOpJO/0mXC/fen4zgk=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uxkbc-0007O3-L4;
	Sun, 14 Sep 2025 11:09:16 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uxkba-0007Nu-DJ
 for linux1394-devel@lists.sourceforge.net;
 Sun, 14 Sep 2025 11:09:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tH3Pdo3XCxD2G7LY3bRhxANbsEYpYS7cvhjxLNZyzLg=; b=V46qznvhTiA6hRev6iyzhlp7T9
 eHZduOd49G+NYlHoGab3ygAiBBnqdu1G2cFFtBWtADJI9mNujoNJu3Y4u538XVWBXYZDok3jhBmDn
 2TfnetOgAuSgy42bE2O835Z52hGD9ardw/LiyF4qUc24QwaeKzIj1mI3zKE9RIka3Y8I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tH3Pdo3XCxD2G7LY3bRhxANbsEYpYS7cvhjxLNZyzLg=; b=FOFVMQKOZ9lSYqFK/ubqgMu23J
 MLRdDJKF4B/u0qf1Hi/3CvyRnwqZoFFtWcc4t8VP0WGPGfbAWj2XU1fOWS5QeYkdX8RZ1wzmSytdK
 BnTW/iYBhsNB7YjQEREtECW5N0prnbpiUe0Na64Q+O7QJxl1NX9CNurifGlDQPbUBXjo=;
Received: from fout-b7-smtp.messagingengine.com ([202.12.124.150])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uxkbZ-00041A-8I for linux1394-devel@lists.sourceforge.net;
 Sun, 14 Sep 2025 11:09:14 +0000
Received: from phl-compute-11.internal (phl-compute-11.internal [10.202.2.51])
 by mailfout.stl.internal (Postfix) with ESMTP id 90AF51D00128;
 Sun, 14 Sep 2025 07:09:02 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
 by phl-compute-11.internal (MEProxy); Sun, 14 Sep 2025 07:09:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-type:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:subject:subject:to:to; s=fm1; t=1757848142; x=
 1757934542; bh=tH3Pdo3XCxD2G7LY3bRhxANbsEYpYS7cvhjxLNZyzLg=; b=X
 Q/Sl+QQSgnuA81L+G6n3jpONe7z76pog7lJZICew0fQTfaMqNJOcDoMbvaxtRFsk
 s02HZVIRc3Ixw43yktlEv9e+VwYvJg3r4d+/8yX3ZC1x6EIfInENJ7uVP2Hdax1G
 oKAZE8sWkIVhBE3Cryq5vH33Umsw8YEyafcWPrvbPzfsElFAQ0f7bUTXASQa6qAH
 YHMYdD88guVbYkAIR9bMqjnNIXMw6JvQW89jSAlFcHHPunOgjlfzC1Z/SVPxpcaL
 ZgUhISYPrwioTfC8sxL7PsSfpP0ZN6gsQSHpEyK6i9OihHdMEdj40kJIxzuIDKVo
 a1v+nYSwEpHk2sSlrJTYw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
 1757848142; x=1757934542; bh=tH3Pdo3XCxD2G7LY3bRhxANbsEYpYS7cvhj
 xLNZyzLg=; b=Jx/a43Tfd+o+Z1R0GcoyQfeUuYLWH3mAVfRjXlQ98EoEtNGmXGP
 e8z355+4p2lU7w4Sqt3SuiPMTlJQA2SwgwQblxdsM00OWE3o+Fr2Apjcm20sSfBB
 Nn0Icb3oMXOWwF3/O63djHFEMN9Uk9LOsBR8C81e7O+SWQYqZS7moLcaVYIVXYOz
 tFiI/DXPID646n1y8dpVMbYa2bnfP9Z41QDGUXYwnm6hNj1YYNJB0EYQ+NpC3Df4
 iyWSLf1ncy7giIx7I5pHGocucQwOSfjqv0qrEYhjquhkqOgvQi5VApr6zrUE7Zmp
 hg+15RRAtDUIx1KpmchLlXzDvkvGYpLHeEw==
X-ME-Sender: <xms:TqLGaGhHkUIx3hzPkTlT_a8klfvmXqNC-ffALSrL3xfXT3w4NwfJMg>
 <xme:TqLGaP9UqctLh5P1hg2zz931ArB7pJ8nLvLPsvKslb2Ddixo_B9-r-RU2yKKccav9
 JFsA89YUwU6yTBAaDE>
X-ME-Received: <xmr:TqLGaAA2IvQBjSelWvSCCrteQxVDfXTWSY2JGCNjXIFV7MRk7mWNjjtyg5d1WjYVT7KS5ThbzN8KWzn9SCeE8VeLM1pCCYZCti5q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdeggdefgeeiiecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpuffrtefokffrpgfnqfghnecuuegr
 ihhlohhuthemuceftddtnecunecujfgurhepfffhvfevuffkfhggtggujgesthdtredttd
 dtvdenucfhrhhomhepvfgrkhgrshhhihcuufgrkhgrmhhothhouceoohdqthgrkhgrshhh
 ihesshgrkhgrmhhotggthhhirdhjpheqnecuggftrfgrthhtvghrnhephefhhfettefgke
 dvieeuffevveeufedtlefhjeeiieetvdelfedtgfefuedukeeunecuvehluhhsthgvrhfu
 ihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepohdqthgrkhgrshhhihesshgrkh
 grmhhotggthhhirdhjphdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhht
 pdhrtghpthhtoheplhhinhhugidufeelgedquggvvhgvlheslhhishhtshdrshhouhhrtg
 gvfhhorhhgvgdrnhgvthdprhgtphhtthhopehlihhnuhigqdhkvghrnhgvlhesvhhgvghr
 rdhkvghrnhgvlhdrohhrgh
X-ME-Proxy: <xmx:TqLGaMKwqVKJM6Eohdvf7E_OBPmz_wIjoo8lFSvSeGl2JvwUpx30Vw>
 <xmx:TqLGaDmGuIfBcrku3RCXZrf1bnIQCm2637dorLKBL_TfLYHNwm2IQg>
 <xmx:TqLGaKFkMvGnK6vWS4JTxFRNEX8vMriH78NZCZ6iwm7Hc5w1r5Mtlw>
 <xmx:TqLGaDECFERApJotWnG7HBOL1-qEJPBdZXbiVOsRqpfdIHGxGY1l9A>
 <xmx:TqLGaNnDLJeKxpvbbnMzx6xmGOfSKUwJsU0qYd7N-9hIz15NVMoZ9LKM>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 14 Sep 2025 07:09:01 -0400 (EDT)
Date: Sun, 14 Sep 2025 20:08:58 +0900
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: Re: [PATCH 0/2] firewire: core: use macro for magic numbers related
 to bus manager work
Message-ID: <20250914110858.GA802269@workstation.local>
Mail-Followup-To: linux1394-devel@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
References: <20250913105737.778038-1-o-takashi@sakamocchi.jp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250913105737.778038-1-o-takashi@sakamocchi.jp>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Sep 13, 2025 at 07:57:35PM +0900, Takashi Sakamoto
 wrote: > Hi,
 > > Some magic numbers are used for bus manager work. This patchset
 adds > some macros to replace the magic numbers. > > * 0x3f: [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1uxkbZ-00041A-8I
X-BeenThere: linux1394-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Linux IEEE 1394 development list
 <linux1394-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=linux1394-devel>
List-Post: <mailto:linux1394-devel@lists.sourceforge.net>
List-Help: <mailto:linux1394-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/linux1394-devel>, 
 <mailto:linux1394-devel-request@lists.sourceforge.net?subject=subscribe>
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: linux1394-devel-bounces@lists.sourceforge.net

On Sat, Sep 13, 2025 at 07:57:35PM +0900, Takashi Sakamoto wrote:
> Hi,
> 
> Some magic numbers are used for bus manager work. This patchset adds
> some macros to replace the magic numbers.
> 
> * 0x3f: BUS_MANAGER_ID_NOT_REGISTERED
> * 0: GAP_COUNT_MISMATCHED
> 
> Takashi Sakamoto (2):
>   firewire: core: use macro expression for gap count mismatch
>   firewire: core: use macro expression for not-registered state of
>     BUS_MANAGER_ID
> 
>  drivers/firewire/core-card.c     | 14 +++++++++-----
>  drivers/firewire/core-topology.c |  2 +-
>  drivers/firewire/core.h          |  6 ++++++
>  3 files changed, 16 insertions(+), 6 deletions(-)

Applied to for-next branch.


Regards

Takashi Sakamoto


_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
