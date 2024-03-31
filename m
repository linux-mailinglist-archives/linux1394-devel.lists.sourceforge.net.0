Return-Path: <linux1394-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+linux1394-devel@lfdr.de
Delivered-To: lists+linux1394-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C798931C8
	for <lists+linux1394-devel@lfdr.de>; Sun, 31 Mar 2024 15:51:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <linux1394-devel-bounces@lists.sourceforge.net>)
	id 1rqvaL-0002jG-Kc;
	Sun, 31 Mar 2024 13:50:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <o-takashi@sakamocchi.jp>) id 1rqvaL-0002j6-7b
 for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:50:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yK+9hUHpQMjdH5ZDxuuzhiGbvrbNehCv3hrwmuexcDM=; b=bjXauFNlWDA84SPjEsTIFynZSO
 F6zN+SeNXnkg9YC4aG3k/spUmERUJlQpCyvzFklBL0PYqf0t8qiW6VZGVnYKIRP2lpA2ixRRRvL6p
 KhdwO0KdqrxuLchQJ7AraLw/ugQyMZ0iLU7EOjttYRc1V16ZbTjDTb0yU8iGjKFfXqSk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=yK+9hUHpQMjdH5ZDxuuzhiGbvrbNehCv3hrwmuexcDM=; b=i
 YktfASnTSAD2bbLPWFrvZiut8iW0pBNWUmT/SV98MVCgFfeoYGFvn3/MpypD1IBorU6YeUsZXj+hZ
 Rx6W11QAkEExgJ7qTV61RMpyi5vzFasUh31cyk46oMCuVpIrisTrlltJ9F5xUPzhEp3N/TGTz9L/L
 oJ/TvgkXGeN+Rir0=;
Received: from wfout5-smtp.messagingengine.com ([64.147.123.148])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rqvaH-0003zj-DM for linux1394-devel@lists.sourceforge.net;
 Sun, 31 Mar 2024 13:50:57 +0000
Received: from compute7.internal (compute7.nyi.internal [10.202.2.48])
 by mailfout.west.internal (Postfix) with ESMTP id AB3261C000A9;
 Sun, 31 Mar 2024 09:50:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute7.internal (MEProxy); Sun, 31 Mar 2024 09:50:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sakamocchi.jp;
 h=cc:cc:content-transfer-encoding:content-type:date:date:from
 :from:in-reply-to:message-id:mime-version:reply-to:subject
 :subject:to:to; s=fm2; t=1711893042; x=1711979442; bh=yK+9hUHpQM
 jdH5ZDxuuzhiGbvrbNehCv3hrwmuexcDM=; b=Ry8cIYfKdPpCVrSINlyAqbDxpq
 VyguBdMvHeR+QT8pREaXyyT4hP3aIh4FmWle0RiPD3jtTCxcXy8PZFGGOcIiS5BT
 RBOkZ2kLScQAccvD2UC2n4GiWppLwUxoBjnYNz0OZdBaq4vrB38/kGY+r1fXRr29
 RSLmy32Xh3BtCCRRGWBLpp8Y+XvNgeh7PzrdAGX26wXgnnfI13T+99Owqu6C2McY
 00u0DsYJNuBmGEl+5hfMb0My3pmAEBFgZVLPSlUWJBOlprD+neqrZbkrv7zivozp
 BsXVBfVv5fkohMYWDIKAaBmA7NkmhWHqC1qq5nAyXHghk3gZ9rGR8F68H1xQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:message-id:mime-version:reply-to:subject:subject:to
 :to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; t=1711893042; x=1711979442; bh=yK+9hUHpQMjdH5ZDxuuzhiGbvrbN
 ehCv3hrwmuexcDM=; b=rLQySQS2V4o5wna7fxTvcfjXwNLead+PfZ5GEaK6V6Wy
 mUmma0QSCDU0eH449z6O2YqQL9RulclMFIA4+4IGEbmQBLUMoANEYJydE/dEFThn
 40dYhkUIdMPH7mH2xUFHasNbmA0LFe4IJ1g/sjQsAwiStVM2/H7ZDiqqaHOAHlOJ
 l87wZoomaTjp/rko98y6iRouaSX18AhXXXjszZpZW6Xo7vDabBOAZu1UdnlLOmq2
 dsFupi1ktUQWIb8UMN1ehJhxcd9EadOwKSo9OrRyoxHMxEZ0GtJgYmd7jjBDFGXQ
 Irw5ZjfCotIPVzmD0GigdZnY+L/R/2RjdWn3ucDHtg==
X-ME-Sender: <xms:MWoJZs2YjAOGd5t4EQ1-UqW-WJxJXuT6qppJMvGhjQLp3EN0sbAWIg>
 <xme:MWoJZnFZF7_hXiqmqgEaHubAA8B6wRTDPVN7Gse24nkyWgz-KOxg_9VjuKCO0vSao
 vPURxyvXDHwP7uLEQI>
X-ME-Received: <xmr:MWoJZk7z2MBQXOawDRS1iHIRFp1fcXLvFW7_b-J57IkvWZNQIu95LV2bMQcmkrEm-9xusv7HYFFVuaS6DKYg3ytaBzigvmr5IBtsJYGtS9WH>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledruddvkedggeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvfevufffkffoggfgsedtkeertd
 ertddtnecuhfhrohhmpefvrghkrghshhhiucfurghkrghmohhtohcuoehoqdhtrghkrghs
 hhhisehsrghkrghmohgttghhihdrjhhpqeenucggtffrrghtthgvrhhnpeffvdeuleffve
 ekudfhteejudffgefhtedtgfeutdfgvdfgueefudehveehveekkeenucevlhhushhtvghr
 ufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehoqdhtrghkrghshhhisehsrg
 hkrghmohgttghhihdrjhhp
X-ME-Proxy: <xmx:MWoJZl0Ywzt1VYBS_QzgnjlzMG61rs2qcrFzhtq40rBa7smuaLmi-g>
 <xmx:MmoJZvGx9BF85uXY0N6FPbQvqdfNtFcMm1f2Q4QffD_DWxWMEKQBLg>
 <xmx:MmoJZu_lIAbNEilAQZxoLqQ44gw_lpDE7hRcwHi9vMAqZwIu3DRALg>
 <xmx:MmoJZkkyiNd4_sxPDkK6fEL0_g2-ootSVq-eHwkUVu4v-zC0SwVhMQ>
 <xmx:MmoJZnB6QMvlQ4TQ1Rw5tJeY9ZjyMW8NPCmRu_kAnXRb0oqYpb3ao57dltE>
Feedback-ID: ie8e14432:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 31 Mar 2024 09:50:40 -0400 (EDT)
From: Takashi Sakamoto <o-takashi@sakamocchi.jp>
To: linux1394-devel@lists.sourceforge.net
Subject: [PATCH 0/4] firewire: ohci: obsolete usage of legacy API for IRQ
 request and MSI
Date: Sun, 31 Mar 2024 22:50:33 +0900
Message-ID: <20240331135037.191479-1-o-takashi@sakamocchi.jp>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi, The pair of pci_enable_msi() and pci_disable_msi() is
 deprecated nowadays, while it is still used in 1394 OHCI driver in FireWire
 subsystem. This series of changes is to use modern API sets for the dr [...]
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.148 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1rqvaH-0003zj-DM
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

The pair of pci_enable_msi() and pci_disable_msi() is deprecated
nowadays, while it is still used in 1394 OHCI driver in FireWire
subsystem. This series of changes is to use modern API sets for the
driver.


Takashi Sakamoto (4):
  Revert "firewire: ohci: use devres for requested IRQ"
  firewire: ohci: replace request_irq() with request_threaded_irq()
  firewire: ohci: obsolete usage of deprecated API for MSI
  firewire: ohci: use pci_irq_vector() to retrieve allocated interrupt
    line

 drivers/firewire/ohci.c | 35 +++++++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 10 deletions(-)

-- 
2.43.0



_______________________________________________
mailing list linux1394-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/linux1394-devel
