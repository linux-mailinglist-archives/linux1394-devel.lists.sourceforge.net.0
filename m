Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 685F3B2E96A
	for <lists+linux1394-devel@lfdr.de>; Thu, 21 Aug 2025 02:30:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Date:Subject:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QQtqqZI9kEofhT1SW6OL4mMmUprFGXshdJNBV3EfWbE=; b=Lb48IeVqXDi218dWsl3x7HZeZw
	Vqpm0FIEfAMWkoOR8Udcycp9Ln2QONu8YOaZbDebK2ei7UOjrDi6nlr/QDxXhsAXMkPZ+Gmww2IG3
	hdGj2ociLKxxJgmTxHNOEsRGSqtnANpFhJ8qIE7KV8QLy35HFsKAR7DzjM3rw9hkALcA=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1uotCP-0003Xw-7z;
	Thu, 21 Aug 2025 00:30:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1uotCL-0003Xc-18
 for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Aug 2025 00:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+gwwzlTlXIaDfV8qx23NRaBErl4HGvjnbBhXkigbWZA=; b=XJzGG2iPzhYs/PPCJPozrKuAAO
 iQKptcFiAn2X+9L29xMtr+1UV9T6Z8UNBcE957AtEpo3ky+InSgy16PHs+VGN3aVJe89w2cqKtddw
 GHXOX612QVXQ38/rp8pRrx5VvcD0fdWviy5vunkgzVbNOmXLd6Sri4cVUEpkoRpeEAj0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+gwwzlTlXIaDfV8qx23NRaBErl4HGvjnbBhXkigbWZA=; b=n
 Byb3DDjWkquv1Czh9mloLvOUMssr+e+f0Hig0pPgQxr/uyaBpgiXYIfsK6pT9r457glW1vAluMGWW
 VBc1m+h3AZ+JevsT9u0ZQTYOf4ETyq+dqlC0QkSuDykxev8/CrJ2dPOL/NOb+9qgO8mHkyStK75tm
 gq19e5dhe/Zi21Yg=;
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uotCK-0005BO-LB for linux1394-devel@lists.sourceforge.net;
 Thu, 21 Aug 2025 00:30:32 +0000
Received: from phl-compute-10.internal (phl-compute-10.internal [10.202.2.50])
 by mailfhigh.phl.internal (Postfix) with ESMTP id 0116014000C0;
 Wed, 20 Aug 2025 20:30:22 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
 by phl-compute-10.internal (MEProxy); Wed, 20 Aug 2025 20:30:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm3; t=1755736221; x=1755822621; bh=+gwwzlTlXI
 aDfV8qx23NRaBErl4HGvjnbBhXkigbWZA=; b=ijfPv1HUZZXvDkTjiO5co5spJ7
 SjGlw+4GiV12AUIk53/dPl/CJTui9xG9phpHzqa7HkuwptUbnWA643bkYAwfNGNh
 0QV+q/358LsXjpXPqFI9m6fJqTJCoLlPS45PsfUgTvKiHTHefoDGgT+6+bRn17X5
 fLtkz12AzLbBA4ngoenFKfMTJOAqw0qr4y4CxTKo45lQCa5QkoXj3wMabYpzl0lG
 ZaQ3VDiGPtG6qKU5n+ONJqvf7Zxkb1KF/Wc6gUX20nvMUj6t1FOUkZFCtNfUxpnG
 w7VWrQqR0XhqzPBFlZGwZA4iMWksAlV5z5/EcJGTdIJJ+Zwma3f3J2RVDUyA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
 1755736221; x=1755822621; bh=+gwwzlTlXIaDfV8qx23NRaBErl4HGvjnbBh
 XkigbWZA=; b=Cadbmps/Pnkg5QA3rQXuQ/qmW2lIh5PmDlAxWIn04wy7bwEUj7n
 XxJKbglAQI1XAzKlmQVVEmE5I3UqW5akUM168Amluv60BB0pN046PrAX1aIyxuds
 EbFWMxPl71hHhjmSqGJq/TtxZDb5oB3pUGMEZB1d8Lx5dOMBz5tT5ZYMcHVHwX4c
 gOYzowNEeERCuo4fMg8nVWFKPvEaXn3Z4EgrcSCAdm0QytaSfPyHyEYpX84oVSeO
 N4og84uI9WxMnys/jWIdEfDz/P0D9BJBQnsPqYmRAJCuRWW1w18vgbY/ES/gDDnv
 GfK7aX8rfcI6kHCaXUTjhP2DR1NG4ZKMLUw==
X-ME-Sender: <xms:nWimaLWla7ZzEToFMewG0TCnrhPzaIhhHTeodNZzkltTRIcSIPtCsA>
 <xme:nWimaMipWAU43t_12zk7-lWT0neMUQ6FWwpFvoiXyNoTl7c0PyXIUmg6EV8ufQT7J
 RW7l5yhRRf5B9XkTEQ>
X-ME-Received: <xmr:nWimaJXlQYEo_4Cv-shWnlsUe75FK97ufjckbCR0Eb7wvgtEKZcBllsXXx4svZTBv_uyY4iZB-Z-uhbWroe5R_YU5M8ygQh0RSbgSNeVwjSinw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeffedrtdefgdduheelkedtucetufdoteggodetrf
 dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfurfetoffkrfgpnffqhgenuceu
 rghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghshhhi
 sehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffveekud
 fhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghrufhi
 iigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrghkrg
 hmohgttghhihdrjhhppdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdp
 rhgtphhtthhopehlihhnuhigudefleegqdguvghvvghlsehlihhsthhsrdhsohhurhgtvg
 hfohhrghgvrdhnvghtpdhrtghpthhtoheplhhinhhugidqkhgvrhhnvghlsehvghgvrhdr
 khgvrhhnvghlrdhorhhg
X-ME-Proxy: <xmx:nWimaDNRQ_RED8YqgTQpYQR6OfGPswVcGAXIaEVkPm4je5uxyfoa7w>
 <xmx:nWimaFZcc0Lvzlb-LH49IJpebw1_Yufb1lL5gZWl8Q23yFN9LlVCKw>
 <xmx:nWimaPqc2ddVNr7FRD4y3W16JF3aXkCkVXiKHfSf4gt-bgRYJCsqOg>
 <xmx:nWimaBb28tXbHxlgEJMkZRY86P7VFBxxSb2y6QEvY9MsrhCTRmbMPA>
 <xmx:nWimaE6oQsH_kr7e2GLFfIkeiuSltKzPRikijzaPjDzbCPNY6R6pOBDk>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 20 Aug 2025 20:30:20 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/4] firewire: ohci: remove obsolete module-level debug
 parameter
Date: Thu, 21 Aug 2025 09:30:13 +0900
Message-ID: <20250821003017.186752-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The "firewire-ohci" module has long provided a "debug"
 parameter that enabled debug logging by calling printk() from hardIRQ context.
 Between v6.11 and v6.12, a series of tracepoints events have been added as
 a more suitable alternative. Since v6.12, a commit cd7023729877 ("firewire:
 ohci: deprecate debug parameter") has already mar [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: messagingengine.com]
 [URI: sakamocchi.jp]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1uotCK-0005BO-LB
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

Hi,

The "firewire-ohci" module has long provided a "debug" parameter that
enabled debug logging by calling printk() from hardIRQ context.

Between v6.11 and v6.12, a series of tracepoints events have been added as
a more suitable alternative. Since v6.12, a commit cd7023729877
("firewire: ohci: deprecate debug parameter") has already marked the
parameter as deprecated.

This series removes the parameter, as its functionality is now fully
covered by tracepoints.

Takashi Sakamoto (4):
  firewire: ohci: remove obsolete debug logging for IRQ events
  firewire: ohci: remove obsolete debug logging for selfID sequence
  firewire: ohci: remove obsolete debug logging for AT/AR results
  firewire: ohci: remove obsolete module-level debug parameter

 drivers/firewire/ohci.c | 248 ++++------------------------------------
 1 file changed, 20 insertions(+), 228 deletions(-)


base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
-- 
2.48.1



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
